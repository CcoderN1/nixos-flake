# Do not modify this file!  It was generated by ‘nixos-generate-config’
# and may be overwritten by future invocations.  Please make changes
# to /etc/nixos/configuration.nix instead.
{ config, lib, pkgs, modulesPath, ... }:

{
  imports =
    [ (modulesPath + "/installer/scan/not-detected.nix")
    ];

  boot.initrd.availableKernelModules = [ "nvme" "xhci_pci" "ahci" "usbhid" "usb_storage" "sd_mod" ];
  boot.extraModulePackages = [ ];

  fileSystems."/" =
    { device = "/dev/disk/by-uuid/94e4cb99-35f9-4e6b-bb18-34444f187e54";
      fsType = "f2fs";
      options = [ "compress_algorithm=zstd:6" ];
    };

  fileSystems."/mnt/HDD" = 
  {
    device = "/dev/disk/by-uuid/e033891a-3f88-4961-9778-f7df78078bac";
    fsType = "ext4";
    options = [ "nosuid" "nodev" "nofail" ];
  };
  
  fileSystems."/mnt/kingston" = 
  {
    device = "/dev/disk/by-uuid/0ed99fc3-7d6c-400e-a05f-87bcce1ecf8c";
    fsType = "ext4";
    options = [ "nosuid" "nodev" "nofail" ];
  };
  
  fileSystems."/mnt/ssd_120" = 
  {
    device = "/dev/disk/by-uuid/b4ad82ee-6e32-41e7-b577-7b183d7b7849";
    fsType = "ext4";
    options = [ "nosuid" "nodev" "nofail" ];
  };
  
  fileSystems."/mnt/HDD_500" = 
  {
    device = "/dev/disk/by-uuid/17e232cf-bd22-4a1d-8532-f222d7e3660c";
    fsType = "ext4";
    options = [ "nosuid" "nodev" "nofail" ];
  };

  fileSystems."/boot" =
    { device = "/dev/disk/by-uuid/82FF-1E37";
      fsType = "vfat";
      options = [ "fmask=0077" "dmask=0077" ];
    };

  swapDevices = [ ];

  # Enables DHCP on each ethernet and wireless interface. In case of scripted networking
  # (the default) this is the recommended approach. When using systemd-networkd it's
  # still possible to use this option, but it's recommended to use it in conjunction
  # with explicit per-interface declarations with `networking.interfaces.<interface>.useDHCP`.
  networking.useDHCP = lib.mkDefault true;
  # networking.interfaces.eno1.useDHCP = lib.mkDefault true;

  nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";
  hardware.cpu.amd.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
}
