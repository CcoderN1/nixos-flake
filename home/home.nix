{ curversion
, ...
}:
{
  imports = [ 
    ./pkgs
  ];
  home = {
    stateVersion = "24.11";
    username = "unixlike";
    homeDirectory = "/home/unixlike";
    sessionVariables = { };
  };
}