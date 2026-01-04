{
  description = "nix flake for mobile development";

  inputs.nixpkgs = {
    url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = {nixpkgs, ...}: let
    system = "x86_64-linux";
    pkgs = import nixpkgs {inherit system;};
  in {
    devShells.${system} = {
      default = pkgs.mkShellNoCC {
        buildInputs = with pkgs; [
          flutter
          openjdk21_headless
        ];

        shellHook = ''
          export PUB_CACHE="$PWD/.dart/pub-cache"
          export ANALYZER_STATE_LOCATION_OVERRIDE="$PWD/.dart/dartServer"
          export PATH="$PATH:$PWD/.dart/pub-cache/bin"
        '';
      };
    };
  };
}
