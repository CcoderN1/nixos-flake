{
  lib,
  buildGoModule,
  fetchFromGitHub,
}: buildGoModule rec {
  pname = "spoofDPI";
  version = "0.10.8";

  src = fetchFromGitHub {
    owner = "xvzc";
    repo = "spoofDPI";
    rev = "v${version}";
    sha256 = "sha256-gAC5nlFVlcRqWLytKpeki/Y7i4kHjVQ/B4ByHYTVSH0=";
  };

  vendorHash = "sha256-sIqkpoaXx+Un1GdOKgPkZnn3/DWCNAcDHqGaw8i6qDk=";

  subPackages = [
    "cmd/spoof-dpi"
  ];

  ldflags = [
    "-s"
    "-w"
  ];

  meta = with lib; {
    description = "A simple and fast anti-censorship tool written in Go";
    homepage = "https://github.com/xvzc/SpoofDPI";
    license = licenses.asl20;
  };
}