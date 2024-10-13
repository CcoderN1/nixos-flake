{ lib
, stdenvNoCC
, fetchFromGitHub
, gtk3
, gnome-icon-theme
}:

stdenvNoCC.mkDerivation (finalAttrs: {
  pname = "Rewaita";
  version = "unstable";

  src = fetchFromGitHub {
    owner = "cublae";
    repo = "Rewaita";
    rev = "f5d59b9a31fd12edb3731deb834b1d7944830fc4";
    hash = "sha256-JDWCRlJvTNJRXXwjNXr/Y2KINeT4i991Y1hSORXFsJk=";
  };

  nativeBuildInputs = [ gtk3 ];

  propagatedBuildInputs = [ gnome-icon-theme ];

  installPhase = ''
    runHook preInstall

    mkdir -p $out/share/icons/Rewaita
    cp -r * $out/share/icons/Rewaita/
    gtk-update-icon-cache $out/share/icons/Rewaita

    runHook postInstall
  '';

  dontDropIconThemeCache = true;
  dontBuild = true;
  dontConfigure = true;
})