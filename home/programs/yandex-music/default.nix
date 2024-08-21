{pkgs, inputs, config, ... }:
{
  imports = [ inputs.yandex-music.homeManagerModules.default ];
  programs.yandex-music = {
    enable = true;
    tray.enable = true;
  };
}