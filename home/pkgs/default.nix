{ pkgs 
, inputs
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
    #telegram-desktop
    gnome-tweaks
    pavucontrol
    helvum
    qadwaitadecorations
    qadwaitadecorations-qt6
    adw-gtk3
    droidcam
    mangohud
    python3
    tor
    mission-center
    lutris
    oh-my-fish
    ntfs3g
    killall
    fastfetch
    fira-sans
    roboto
    kdenlive
    eclipses.eclipse-java
    blender-hip
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
    materialgram
    todoist-electron
    obs-studio
    krita
    gamescope
    neovim
    #inputs.yandex-browser.packages.${pkgs.system}.yandex-browser-stable
    nekoray
    #jetbrains.idea-ultimate
    #jetbrains.webstorm
    #jetbrains.phpstorm
    nodejs_22
    php
    over-simtoolkitpro
  ];
}
