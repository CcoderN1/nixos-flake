{ lib 
, pkgs 
, ...
}:
{
  users.users.unixlike = {
    isNormalUser = true;
    description = "unixlike";
    extraGroups = [ "networkmanager" "wheel" "openrazer" "corectrl" "libvirtd" ];
    shell = pkgs.fish;
    ignoreShellProgramCheck = true;
  };
  environment.sessionVariables = { 
    FLAKE = "/home/unixlike/nixos-flake";
    QT_QPA_PLATFORMTHEME = "gnome";
    QT_WAYLAND_DECORATION = "adwaita";
    QT_QPA_PLATFORM = "wayland";
    GDK_BACKEND = "wayland,x11";
    NIXOS_OZONE_WL = "1";
  };
}