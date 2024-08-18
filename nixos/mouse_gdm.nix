{ config
, pkgs
, lib
, ... 
}:
{
  services.xserver.desktopManager.gnome.extraGSettingsOverrides = ''
  [org.gnome.desktop.peripherals.mouse]
  middle-click-emulation=true
  accel-profile='flat' 
  natural-scroll=false
  speed = -0.8 
  '';
}