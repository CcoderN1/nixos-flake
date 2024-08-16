{ pkgs 
, ...
}:
{
  home.packages = with pkgs; [
    over-google-chrome
    ranger
    vesktop
    neovim
    htop
    vscode
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
    gnomeExtensions.appindicator
    gnome-extension-manager
    gnomeExtensions.vitals
    mangohud
    python3
    tor
  ];
}