{ pkgs 
, inputs
, stable
, ...
}:
{
  home.packages = with pkgs; [
    spoofdpi
    over-google-chrome
    ranger
    vesktop
    htop
    veracrypt
    p7zip
    gpu-screen-recorder-gtk
    #gpu-screen-recorder
    #over-gpu-screen-recorder
    gnome-tweaks
    pavucontrol
    helvum
    qadwaitadecorations
    qadwaitadecorations-qt6
    stable.adw-gtk3
    droidcam
    mangohud
    python3
    tor
    mission-center
    lutris
    ntfs3g
    killall
    fastfetch
    kdenlive
    eclipses.eclipse-java
    dconf-editor
    micro
    celluloid
    mpv
    vlc
    heroic
    yt-dlp
    ffmpeg
    qbittorrent
    onlyoffice-bin
    bat
    tty-clock
    todoist-electron
    krita
    gamescope
    neovim
    nekoray
    jetbrains.idea-ultimate
    jetbrains.webstorm
    jetbrains.phpstorm
    nodejs_22
    php
    vkbasalt
    cava
    tokei
    antimicrox
    appimage-run
    waydroid
    blanket
    protonplus
    whatsapp-for-linux
    tor-browser
    cassette
    unigine-superposition
    onefetch
    gimp
    rewaita
    telegram-desktop
    ffmpegthumbnailer
    termdown
    xdragon
  ];
}
