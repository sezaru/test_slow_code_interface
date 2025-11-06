{
  pkgs,
  lib,
  config,
  inputs,
  ...
}:

with lib;

let
  pkgs-unstable = import inputs.nixpkgs-unstable {
    system = pkgs.stdenv.system;
    config.allowUnfree = true;
  };

  state_dir = config.env.DEVENV_STATE;
in
{
  imports = [
    ./modules/elixir.nix
    ./modules/postgresql.nix
    ./modules/devenv_utils.nix
  ];

  dotenv.enable = true;

  modules.elixir = {
    enable = true;
    package = pkgs-unstable.elixir_1_18;
    erlang.package = pkgs-unstable.erlang;
  };

  modules.postgresql = {
    enable = true;
    package = pkgs-unstable.postgresql;
    port = 5432;
    extensions = extensions: [
      extensions.postgis
    ];
  };
}
