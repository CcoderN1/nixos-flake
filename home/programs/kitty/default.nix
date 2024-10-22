{ pkgs, ... }:
{
  programs.kitty = {
    enable = true;
    package = pkgs.kitty;
    extraConfig = "
 font_family  Source Code Pro Bold
 bold_font        auto
 italic_font      auto
 bold_italic_font auto

font_size 10.0

editor nvim

background_opacity 0.7

window_margin_width 15

include /home/unixlike/.cache/wal/colors-kitty.conf
active_tab_font_style bold
inactive_tab_font_style normal ";
  };
}
