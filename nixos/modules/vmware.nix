{
  virtualisation.vmware.guest.enable = false;
  virtualisation.vmware.host.enable = true;
  virtualisation.vmware.host.extraConfig = ''
    mks.gl.allowUnsupportedDrivers = "TRUE"
    mks.vk.allowUnsupportedDevices = "TRUE"
  '';
}