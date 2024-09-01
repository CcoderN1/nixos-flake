{ pkgs 
, ...
}:
{
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    waybar
    hyprland
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
    waybar
    rofi-wayland
    hyprlock
    grimblast
  ];
}
