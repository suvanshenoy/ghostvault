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
          export MIX_ARCHIVES="$HOME/prog/.mix/archives"
          export MIX_HOME="$HOME/prog/.mix"
          export HEX_HOME="$HOME/prog/.hex"
          mix local.hex --force
          mix archive.install --force hex phx_new
          export BUN_INSTALL="$HOME/prog/ts/.bun"
          export PATH="$PATH:$BUN_INSTALL/bin"
          $installBunPkgs
        '';
      };
    };
  };
}
