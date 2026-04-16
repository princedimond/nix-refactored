{ lib, ... }:
{
  options = {
    pd = {
      roles = {
        desktop = {
          enable = lib.mkEnableOption "Desktop role configuration";
        };
      };
      drivers = {
        vm = {
          enable = lib.mkEnableOption "VM driver configuration";
        };
      };
      path = lib.mkOption {
        default = "path:/home/princedimond/nix-refactored";
        description = "Path to rebuild the configuration from.";
      };
    };
  };
}
