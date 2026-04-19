{
  pkgs,
  config,
  lib,
  ...
}:
{
  config = lib.mkIf config.pd.roles.desktop.enable {
    environment.systemPackages = with pkgs; [
      microsoft-edge
      thunderbird
      resources
      discord
      vlc
      kdePackages.kate
      ferdium
      bitwarden-desktop
      onlyoffice-desktopeditors
      inputs.zen-browser.packages.x86_64-linux.default
    ];
  };
}
