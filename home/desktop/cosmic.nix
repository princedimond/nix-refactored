{ lib, nixosConfig }:
{
  config = lib.mkIf nixosConfig.roles.desktop.enable {
    programs = {
    };
    wayland.desktopManager.cosmic = {
      panels = [
        {

        }
      ];
    };
  };
}
