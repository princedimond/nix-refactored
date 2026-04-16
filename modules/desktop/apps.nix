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
      kate
      ferdium
      bitwarden-deskop
      onlyoffice-bin
      flatseal
    ];
  };
}
