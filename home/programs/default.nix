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
    ./neovim
    ./vkBasalt
    ./virtmanager
    ./fastfetch
    ./obs
  ] ++ lib.lists.optionals (envir == "GNOME") [
    ./desktop-override/obs
    #./desktop-override/vesktop
    ./autostart
    ./ranger_GNOME
  ] ++ lib.lists.optionals (envir == "Hyprland") [
    ./waybars/waybar_my
    ./anyrun
    ./rofi
    ./kitty
    ./swaync
    ./hyprlock
    ./ranger_Hyprland
  ];
}