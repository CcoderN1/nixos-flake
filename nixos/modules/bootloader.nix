{ pkgs
, ... 
}:
{
  boot.loader = {
    systemd-boot.enable = true;
    efi.canTouchEfiVariables = true;
  };

  boot.initrd.kernelModules = [ "amdgpu" ];
  boot.kernelModules = [ "kvm-amd" ];
  #boot.extraModulePackages = [ config.boot.kernelPackages.wireguard ];
  #boot.kernelPackages = pkgs.linuxPackages_zen;
}
