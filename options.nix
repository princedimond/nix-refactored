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
    };
  };
}
