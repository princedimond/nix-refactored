{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    git
    zip
    yazi
    eza
    bat
    nh
    rsync
    btop
    unzip
    unrar
    lshw
    wget
    pciutils
    dmidecode
    cmatrix
    cpu-x
    nssTools
    dut
    duc
    microfetch
    fastfetch
    direnv
  ];
}
