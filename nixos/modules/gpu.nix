{ pkgs
, config
, ...
}:
{
  hardware.graphics = {
    enable = true;
    enable32Bit = true;
    extraPackages = with pkgs; [
      libva
      rocmPackages.clr.icd
    ];
  };
  programs.corectrl = {
    enable = true;
    gpuOverclock.enable = true;
    gpuOverclock.ppfeaturemask = "0xffffffff";
  };
  systemd.tmpfiles.rules = [
    "L+    /opt/rocm/hip   -    -    -     -    ${pkgs.rocmPackages.clr}"
  ];
}