{ inputs, ... }:
{
  imports = [ inputs.yandex-music.nixosModules.default ];
  programs.yandex-music = {
    enable = true;
    tray.enable = true;
  };
}