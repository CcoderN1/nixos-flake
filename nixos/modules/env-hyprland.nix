{ config
, pkgs
, ...
}: 
{
  security.polkit.enable = true;
  xdg.portal = {
    enable = true;
    wlr.enable = false;
    config.common = {
      default = "gtk";
      "org.freedesktop.impl.portal.Screencast" = "hyprland";
      "org.freedesktop.impl.portal.Screenshot" = "hyprland";
    };
    extraPortals = with pkgs; [
      xdg-desktop-portal-hyprland                          # hyprland portal
      xdg-desktop-portal-gtk                    # for gtk apps
    ];
  };
  environment.systemPackages = with pkgs; [
  ];
  services = {
    gvfs.enable = true;                         # Mount, trash, etc
    displayManager.sessionPackages = [
      pkgs.hyprland                        # hyprland session to be recognized by login managers
    ];
  };
}