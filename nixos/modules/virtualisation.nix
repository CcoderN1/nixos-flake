{
  virtualisation = {
    podman = {
      enable = true;
      dockerCompat = true;
    };
    libvirtd.enable = true;
    spiceUSBRedirection.enable = true;
    waydroid.enable = true;
    vmware.guest.enable = false;
    vmware.host.enable = true;
  };
}