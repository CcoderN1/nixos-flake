{ pkgs 
, ...
}:
{
  dconf.settings = {
    "org/gnome/desktop/interface" = {
      color-scheme = "prefer-dark";
      icon-theme = "Skeuowaita";
      gtk-theme = "adw-gtk3-dark";
      clock-format = "24h";
      document-font-name = "Roboto 11";
      font-name = "Fira Sans 10";
      monospace-font-name = "Fira Code 10 @wght=400";
      enable-hot-corners = true;
    };
    "org/gnome/desktop/screensaver" = {
      lock-delay = 0;
    };
    #"org/gnome/shell" = {
    #  enabled-extension = [
    #    "appindicatorsupport@rgcjonas.gmail.com"
    #    "clipboard-history@alexsaveau.dev"
    #    "spacing@mathematical.coffee.gmail.com"
    #  ];
    #};
  };
  dconf.settings = {
    "org/virt-manager/virt-manager/connections" = {
    autoconnect = ["qemu:///system"];
    uris = ["qemu:///system"];
    };
  };
  home.packages = with pkgs; [
    gnomeExtensions.appindicator
    gnome-extension-manager
    gnomeExtensions.vitals
    gnomeExtensions.gsconnect
    gnomeExtensions.status-area-horizontal-spacing
  ];
  home.file.".config/yandex-music.conf".text = ''
ELECTRON_CUSTOM_BIN=
ELECTRON_ARGS="--no-sandbox"
TRAY_ENABLED=0
DEV_TOOLS=0
  '';
}