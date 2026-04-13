{ config, lib, ... }:
{
  config = lib.mkIf config.pd.roles.desktop.enable {
    services.displayManager.cosmic-greeter.enable = true;
    services.desktopManager.cosmic.enable = true;
  };
}
