# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
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

  services.fstrim.enable = true;
  hardware.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  users.users.unixlike = {
    isNormalUser = true;
    description = "unixlike";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
    	vesktop
    	btop
    	neovim
    	htop
    	nano
    	vscode
    	veracrypt
    	p7zip
    ];
  };

  programs.firefox.enable = true;
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
  	git
  	gh
  ];
  system.stateVersion = "24.05"; # Did you read the comment?

}
