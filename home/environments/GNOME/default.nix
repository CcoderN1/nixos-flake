{ pkgs 
, ...
}:
{
  dconf.settings = {
    "org/gnome/desktop/interface" = {
      color-scheme = "prefer-dark";
      icon-theme = "Rewaita";
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
  };
  home.packages = with pkgs; [
    gnomeExtensions.appindicator
    gnome-extension-manager
    gnomeExtensions.vitals
    gnomeExtensions.gsconnect
    gnomeExtensions.status-area-horizontal-spacing
    gnomeExtensions.transcodeappsearch
    gnomeExtensions.media-controls
    gnomeExtensions.clipboard-history
    gnomeExtensions.blur-my-shell
  ];
}