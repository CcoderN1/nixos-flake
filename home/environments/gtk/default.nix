{ pkgs
,... 
}:
{
  gtk = {
    enable = true;
    iconTheme.name = "Skeuowaita";
    theme = {
      name = "adw-gtk3-dark";
      package = pkgs.adw-gtk3;
    };
    #cursorTheme = {
    #  name = "MacOS-Monterey";
    #  package = pkgs.apple-cursor;
    #  size = 24;
    #};
  };
}