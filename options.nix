{ lib, ... }:
{
  options = {
    pd = {
      roles = {
        desktop = {
          enable = lib.mkEnableOption "Desktop role configuration";
        };
      };
    };
  };
}
