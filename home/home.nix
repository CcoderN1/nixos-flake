{ curversion
, ...
}:
{
  imports = [ 
    ./pkgs
    ./programs
    ./environments/gnome
    ./environments/defaultapp
  ];
  home = {
    stateVersion = "${curversion}";
    username = "unixlike";
    homeDirectory = "/home/unixlike";
    #sessionVariables = {};
  };
}