{ pkgs
, config
, ... 
}:
{
  boot.loader = {
    systemd-boot.enable = true;
    efi.canTouchEfiVariables = true;
  };

  boot.initrd.kernelModules = [ "amdgpu" ];
  boot.kernelModules = [ "kvm-amd" ];
  boot.extraModulePackages = with config.boot.kernelPackages; [
    (pkgs.callPackage  ../../overlays/v4l2loopback-dc.nix { kernel = config.boot.kernelPackages.kernel; })
  ];
  boot.extraModprobeConfig = ''
options v4l2loopback-dc width=1600 height=900 devices=1 video_nr=1 card_label="OBS Cam" exclusive_caps=1
  '';
}
