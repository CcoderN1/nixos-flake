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
    };
    resolved.enable = true;
    printing.enable = true;
    flatpak.enable = true;
    fstrim.enable = true;
  };
}