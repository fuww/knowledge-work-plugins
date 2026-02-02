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
    in
    {
      devShells = forEachSystem
        (system:
          let
            pkgs = import nixpkgs {
              inherit system;
            };
          in
          {
            default = pkgs.mkShell {
              packages = with pkgs; [
                git
                go
                gh
                jujutsu
                ripgrep
                (python3.withPackages (ps: with ps; [
                  pip
                ]))
              ];

              shellHook = ''
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

                if ! command -v bd &> /dev/null; then
                  echo "📿 Installing beads (bd) for AI agent task tracking..."
                  go install github.com/steveyegge/beads/cmd/bd@v0.49.1
                fi
                echo "  Beads:       $(bd --version 2>/dev/null || echo 'run: go install github.com/steveyegge/beads/cmd/bd@v0.49.1')"
                echo ""
              '';
            };
          });
    };
}
