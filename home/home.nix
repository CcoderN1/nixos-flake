{ curversion
, ...
}:
{
  imports = [ 
    ./pkgs
    ./gtk
    ./programs
  ];
  home = {
    stateVersion = "${curversion}";
    username = "unixlike";
    homeDirectory = "/home/unixlike";
    sessionVariables = { 
      QT_WAYLAND_DECORATION = "adwaita";
      QT_QPA_PLATFORM = "wayland";
      GDK_BACKEND = "wayland";
      MOZ_ENABLE_WAYLAND = "1";
    };
  };
}