{ lib
, envir
, ...
}:
{
  imports = [
    ./mangohud
    #./steam
    ./eza
    ./fzf
    ./zoxide
    ./fish
    ./vscode
    ./ranger
    ./autostart
    ./neovim
    ./vkBasalt
    ./virtmanager
    ./fastfetch
    ./obs
    ./desktop-override/obs
    ./desktop-override/vesktop
    ./desktop-override/heroic
  ] ++ lib.lists.optionals (envir == "Hyprland") [
    ./waybar
    ./anyrun
    ./rofi
  ];
}