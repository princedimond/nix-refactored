{ config, lib, ... }:
{
  config = lib.mkIf config.pd.drivers.vm.enable {
    services.qemuGuest.enable = true;
    services.spice-vdagentd.enable = true; # enable copy and paste between host and guest
  };
}
