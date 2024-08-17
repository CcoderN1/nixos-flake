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
  # Not working polkit for corectrl
  #environment.etc."polkit-1/rules.d/90-corectrl.rules".text = ''   
#polkit.addRule(function(action, subject) {
#  if ((action.id == "org.corectrl.helper.init" ||
#      action.id == "org.corectrl.helperkiller.init") &&
#    subject.local == true &&
#    subject.active == true &&
#    subject.isInGroup("unixlike")) {
#      return polkit.Result.YES;
#    }
#});
#'';
}