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
  ] ++ lib.lists.optionals (envir == "gnome") [
    ./desktop-override/obs
    ./desktop-override/vesktop
    ./desktop-override/heroic
  ] ++ lib.lists.optionals (envir == "Hyprland") [
    ./waybar
    ./anyrun
    ./rofi
    ./kitty
    ./swaync
    ./hyprlock
  ];
}