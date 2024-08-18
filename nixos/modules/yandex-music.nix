{pkgs, inputs, ... }:
{
  imports = [ inputs.yandex-music.nixosModule ];
  programs.yandex-music = {
    enable = true;
    tray.enable = true;
  };
}