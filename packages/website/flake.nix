{
  description = "nix flake for typescript development";

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
          bun
        ];

      installBunPkgs = pkgs.lib.map (x: "bun a -g " + x) [
        "@biomejs/biome"
        "@typescript/native-preview"
        "typescript"
        "typescript-language-server"
        "vscode-langservers-extracted"
        "@tailwindcss/language-server"
        "@vue/language-server"
        "prettier"
      ];

      shellHook =''
        export BUN_INSTALL="$PWD/.bun"
        export PATH="$PATH:$BUN_INSTALL/bin"
        $installBunPkgs
      '';
      };
    };
  };
}
