{ lib 
, pkgs 
, ...
}:
{
  users.users.unixlike = {
    isNormalUser = true;
    description = "unixlike";
    extraGroups = [ "networkmanager" "wheel" "openrazer" ];
    shell = pkgs.fish;
    ignoreShellProgramCheck = true;
  };
  environment.sessionVariables = { 
    QT_WAYLAND_DECORATION = "adwaita";
    QT_QPA_PLATFORM = "wayland";
    GDK_BACKEND = "wayland";
    NIXOS_OZONE_WL = "1";
  };
}