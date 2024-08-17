{ pkgs
, ...
}: 
{
  # Not working polkit for corectrl
  #security.polkit.extraConfig = ''
  #  polkit.addRule(function(action, subject) {
  #      if ((action.id == "org.corectrl.helper.init" ||
  #        action.id == "org.corectrl.helperkiller.init") &&
  #          subject.local == true &&
  #            subject.active == true &&
  #            subject.isInGroup("corectrl")) {
  #            return polkit.Result.YES;
  #          }
  #    });
  #  '';
  security = {
    wrappers."gsr-kms-server" = { 
      owner = "root";
      group = "root";
      capabilities = "cap_sys_admin+ep";
      source = "${pkgs.gpu-screen-recorder}/bin/gsr-kms-server";
    };
  };
}