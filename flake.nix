{
  description = "nix flake for elixir development";

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
          erlang_28
          elixir_1_19
          bun
        ];

        installBunPkgs = pkgs.lib.map (x: "bun a -g " + x) [
          "@tailwindcss/language-server"
        ];

        shellHook = ''
          export ROOT_DIR="$HOME/.nix-flakes/ex"

          if [ ! -d "$ROOT_DIR" ];then
            mkdir -pv "$ROOT_DIR"
          fi

          export MIX_ARCHIVES="$ROOT_DIR/.mix/archives"
          export MIX_HOME="$ROOT_DIR/.mix"
          export HEX_HOME="$ROOT_DIR/.hex"

          mix local.hex --force
          mix archive.install --force hex phx_new

          export BUN_INSTALL="$ROOT_DIR/.bun"
          export PATH="$PATH:$BUN_INSTALL/bin"

          $installBunPkgs
        '';
      };
    };
  };
}
