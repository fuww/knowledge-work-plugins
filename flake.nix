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
            };
          });
    };
}
