{ pkgs
, ...
}: 
{
  fonts = {
    fontconfig.enable = true;
    fontDir = {
      enable = true;
      decompressFonts = true;
    };
    packages = (with pkgs; [
      terminus-nerdfont
      noto-fonts
      nerdfonts
      noto-fonts-cjk
      noto-fonts-emoji
      liberation_ttf
      roboto
      roboto-slab
      fira
      fira-sans
      fira-code
      fira-code-symbols
      #mplus-outline-fonts.githubRelease
      #dina-font
      proggyfonts
      hack-font
    ]);
  };
}