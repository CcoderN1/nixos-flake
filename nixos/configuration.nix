# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config
, pkgs
, curversion
, ... 
}:

{
  imports =
    [ 
      ./hardware-configuration.nix
      ./packages.nix
      ./modules/bootloader.nix
      ./modules/user.nix
      ./modules/fonts.nix
      ./modules/zram.nix
      ./modules/sound.nix
      ./modules/fstrim.nix
      ./modules/flatpak.nix
      ./modules/gpu.nix
      ./modules/games.nix
      ./modules/security.nix
      ./modules/gnome-polkit.nix
    ];


  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  networking.hostName = "nixos"; # Define your hostname.
  networking.networkmanager.enable = true;
  time.timeZone = "Europe/Moscow";
  
  i18n.defaultLocale = "en_US.UTF-8";
  #driSupport = true;
  services.xserver.enable = true;
  #services.xserver.enable = services.xserver.videoDri;
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;
  
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  services.printing.enable = true;
  services.xserver.excludePackages = [ pkgs.xterm ];
 


  programs.firefox.enable = true;
  system.stateVersion = "$(curversion)"; # Did you read the comment?

}
