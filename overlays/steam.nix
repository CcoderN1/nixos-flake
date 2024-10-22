{ pkgs
, ...
}: 
(pkgs.steam.override {
  extraPkgs = pkgs: with pkgs; [
    xorg.libXcursor
    xorg.libXi
    xorg.libXinerama
    xorg.libXScrnSaver
    libpng
    libpulseaudio
    libvorbis
    stdenv.cc.cc.lib
    libkrb5
    keyutils
    nss
  ];
}).overrideAttrs (oldAttrs: rec {
  version = "1.0.0.79";
  src = pkgs.fetchurl {
    url = "https://repo.steampowered.com/steam/archive/stable/steam_1.0.0.81.tar.gz";
    sha256 = "sha256-Gia5182s4J4E3Ia1EeC5kjJX9mSltsr+b+1eRtEXtPk=";
  };
})