{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.11";
    systems.url = "github:nix-systems/default";

    # Claude loop scripts (ralph_wiggum) - private repo, use git+ssh
    prompts = {
      url = "git+ssh://git@github.com/fuww/prompts.git";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, systems, prompts, ... }:
    let
      forEachSystem = nixpkgs.lib.genAttrs (import systems);

      beadsRustVersion = "0.1.19";
      beadsRustHashes = {
        "x86_64-linux" = "sha256-61a0IeR+NI56GDJdIQlxeiQ3wqNneAe1gUPzAz5oTMw=";
        "x86_64-darwin" = "sha256-98srAx9fRr7NDbzVjIs4za7KONicVgPkZEimSaZ85/w=";
        "aarch64-darwin" = "sha256-p8cZ6+c4LUSMU1Cvz+lus6NfYYTWFilCD2Jt2G+PGSg=";
      };
      beadsRustTargets = {
        "x86_64-linux" = "linux_amd64";
        "x86_64-darwin" = "darwin_amd64";
        "aarch64-darwin" = "darwin_arm64";
      };
    in
    {
      devShells = forEachSystem
        (system:
          let
            pkgs = import nixpkgs {
              inherit system;
            };

            beads-rust = pkgs.stdenv.mkDerivation {
              pname = "beads-rust";
              version = beadsRustVersion;
              src = pkgs.fetchurl {
                url = "https://github.com/Dicklesworthstone/beads_rust/releases/download/v${beadsRustVersion}/br-v${beadsRustVersion}-${beadsRustTargets.${system}}.tar.gz";
                hash = beadsRustHashes.${system};
              };
              sourceRoot = ".";
              installPhase = ''
                mkdir -p $out/bin
                cp br $out/bin/
                chmod +x $out/bin/br
              '';
              meta = {
                description = "AI-supervised issue tracker (Rust rewrite)";
                homepage = "https://github.com/Dicklesworthstone/beads_rust";
                license = pkgs.lib.licenses.mit;
              };
            };
          in
          {
            default = pkgs.mkShell {
              packages = [
                beads-rust
              ] ++ (with pkgs; [
                git
                gh
                jujutsu
                prek
                lefthook
                ripgrep
                (python3.withPackages (ps: with ps; [
                  pip
                ]))
              ]);

              shellHook = ''
                prek install
                lefthook install
                # === Claude Loop Setup (ralph_wiggum) ===
                _LOOP_SRC="${prompts}/ralph_wiggum"

                # Symlink loop.sh (always from central repo)
                if [[ ! -L ./loop.sh ]] || [[ "$(readlink ./loop.sh 2>/dev/null)" != "$_LOOP_SRC/loop.sh" ]]; then
                  rm -f ./loop.sh 2>/dev/null || true
                  ln -sf "$_LOOP_SRC/loop.sh" ./loop.sh
                fi

                # Symlink PROMPT_*.md unless local override exists (regular file)
                for _p in PROMPT_build.md PROMPT_plan.md PROMPT_review.md; do
                  if [[ -f "./$_p" ]] && [[ ! -L "./$_p" ]]; then
                    : # Local override exists, keep it
                  else
                    ln -sf "$_LOOP_SRC/$_p" "./$_p" 2>/dev/null || true
                  fi
                done

                echo "  Beads:       $(br --version)"
                echo ""
              '';
            };
          });
    };
}
