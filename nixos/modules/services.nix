{ config
, pkgs
, ...
}:
{
  services = {
    xserver = {
      enable = true;
      xkb = {
        layout = "us";
        variant = "";
      };
      excludePackages = [ pkgs.xterm ];
      displayManager = {
        gdm.enable = true;
        gdm.wayland = true;
      };
      desktopManager.gnome.enable = true;
    };
    resolved.enable = true;
    printing.enable = true;
  };
}