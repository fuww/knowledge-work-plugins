{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.11";
    systems.url = "github:nix-systems/default";
  };

  outputs = { self, nixpkgs, systems, ... }:
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
