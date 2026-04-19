{ lib, nixosConfig }:
{
  config = lib.mkIf nixosConfig.pd.roles.desktop.enable {
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
