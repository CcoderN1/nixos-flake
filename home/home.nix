{ curversion
, ...
}:
{
  imports = [ 
    ./pkgs
    ./gtk
  ];
  home = {
    stateVersion = "${curversion}";
    username = "unixlike";
    homeDirectory = "/home/unixlike";
    sessionVariables = { 
      QT_WAYLAND_DECORATION = "adwaita";
      QT_QPA_PLATFORM = "wayland";
    };
  };
}