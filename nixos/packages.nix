{ pkgs 
, ...
}:
{
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    git
    gh
    vulkan-headers
    vulkan-tools
    vulkan-loader
    inxi
    nano
    mesa-demos
    libva-utils
    clinfo
    openrazer-daemon
    polychromatic
    wireguard-tools
    distrobox
    toolbox
    podman
    btop
    lm_sensors
    wl-clipboard
    wl-clipboard-x11
    qemu
    nvtopPackages.amd
    xorg.xeyes
    xcb-util-cursor
    obfs4
    nh
    #fwupd
  ];
}
