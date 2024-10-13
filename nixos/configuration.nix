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
      ./modules/gpu.nix
      ./modules/games.nix
      ./modules/security.nix
      ./modules/gnome-polkit.nix
      ./modules/virt-manager.nix
      ./modules/vmware.nix
      ./monitors/gdm/default.nix
      ./mouse_gdm.nix
      ./modules/virtualisation.nix
      ./modules/services.nix
    ];

  nix = {
    settings = {
      experimental-features = [ "flakes" "nix-command" ];
      warn-dirty = false;
      auto-optimise-store = true;
    };
    gc = {
      automatic = true;
      dates = "weekly";
      options = "--delete-older-than 7d";
    };
  };
  networking.hostName = "zimmer"; # Define your hostname.
  networking.networkmanager.enable = true;
  time.timeZone = "Europe/Moscow";
  i18n.defaultLocale = "en_US.UTF-8";
  environment.shells = [ pkgs.fish ];
  programs.nix-ld.enable = true;
  hardware.openrazer.enable = true;
  programs.firefox.enable = true;
  system.stateVersion = "${curversion}"; 
}
