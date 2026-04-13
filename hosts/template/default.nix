{
  imports = [
    ./hardware-configuration.nix
  ];
  networking.hostName = "template";
  services.openssh.enable = true;
  pd.roles.desktop.enable = true;
}
