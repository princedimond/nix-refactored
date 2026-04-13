{
  imports = [
    ./hardware-configuration.nix
  ];
  networking.hostName = "template";
  services.openssh.enable = true;
}
