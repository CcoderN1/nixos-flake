{ pkgs 
, inputs
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
    btop
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
    lm_sensors
  ];
}
