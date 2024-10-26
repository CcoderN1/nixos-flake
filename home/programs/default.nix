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
    ./neovim
    ./vkBasalt
    ./virtmanager
    ./fastfetch
    ./obs
  ] ++ lib.lists.optionals (envir == "GNOME") [
    ./desktop-override/obs
    ./desktop-override/vesktop
    ./desktop-override/heroic
    ./autostart
  ] ++ lib.lists.optionals (envir == "Hyprland") [
    #./waybar_old_my
    ./waybar
    ./anyrun
    ./rofi
    ./kitty
    ./swaync
    ./hyprlock
  ];
}