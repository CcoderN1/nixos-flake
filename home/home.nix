{ curversion
, ...
}:
{
  imports = [ 
    ./pkgs
    #./gtk
    ./programs
    ./gnome
  ];
  home = {
    stateVersion = "${curversion}";
    username = "unixlike";
    homeDirectory = "/home/unixlike";
    sessionVariables = { 
      MOZ_ENABLE_WAYLAND = "1";
    };
  };
}