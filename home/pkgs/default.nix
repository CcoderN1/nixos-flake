{ pkgs 
, ...
}:
{
  home.packages = with pkgs; [
    spoof-dpi
    over-google-chrome
    ranger
    vesktop
    neovim
    htop
    veracrypt
    p7zip
    gpu-screen-recorder-gtk
    telegram-desktop
    gnome-tweaks
    pavucontrol
    helvum
    qadwaitadecorations
    qadwaitadecorations-qt6
    adw-gtk3
    droidcam
    linuxKernel.packages.linux_zen.v4l2loopback
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
    #jetbrains.idea-ultimate
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
  ];
}
