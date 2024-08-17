{ pkgs, stdenv }:

stdenv.mkDerivation {
  pname = "spoof-dpi";
  version = "0.10.8";

  dontBuild = true;
  sourceRoot = ".";

  src = pkgs.fetchurl {
    url = "https://github.com/xvzc/SpoofDPI/releases/download/v0.10.8/spoof-dpi-linux-amd64.tar.gz";
    hash = "sha256-cCyx80VRD48CW0sa+7uoHkttWwalkez+5qrV6KaR6ME=";
  };

  installPhase = ''
    mkdir -p $out/bin/
    cp ./spoof-dpi $out/bin/
  '';
}