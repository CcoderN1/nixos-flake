{ curversion
, envir
, ...
}:
{
  imports = [ 
    ./pkgs
    ./programs
    ./environments/${envir}
    ./environments/defaultapp
  ];
  home = {
    stateVersion = "${curversion}";
    username = "unixlike";
    homeDirectory = "/home/unixlike";
    #sessionVariables = {};
  };
}