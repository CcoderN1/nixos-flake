{ curversion
, ...
}:
{
  imports = [ 
    ./pkgs
    ./programs
    ./environments/gnome
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