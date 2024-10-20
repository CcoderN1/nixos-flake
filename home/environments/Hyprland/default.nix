{ lib
, config
, pkgs
, deflocale
, hostname
, uservars
, inputs
}:
{
  home.packages = with pkgs; [
    rofi-wayland
    kitty
    waybar
    nemo
    imv
    grim
    swww
    hyprshot
    hyprpicker
    anyrun
    gnome-calculator
    nautilus
    eog
    alacritty
    clipman
    cliphist
  ];
  wayland.windowManager.hyprland = {
    enable = true;
    package = pkgs.hyprland;
    systemd.enable = true;
    xwayland.enable = true;
    setting = {
      general = {
        gaps_in = 5;
        gaps_out = 10;
        border_size = 2;
        "col.active_border" = "rgba(BFBDB6ff)";
        "col.inactive_border" = "rgba(3A3A3Aff)";
        layout = "dwindle";
      };
      decoration = {
        rounding = 0;
        multisample_edges = 2;
        blur = {
          enable = true;
          size = 2;
          passes = 4;
          new_optimizations = true;
        };
        drop_shadow = yes;
        shadow_range = 8;
        shadow_render_power = 5;
        "col.shadow" = "rgba(2f343fff)";
      };
      animations = {
        enabled = true;
        bezier = [ 
          "wind, 0.05, 0.9, 0.1, 1.05"
          "winIn, 0.1, 1.1, 0.1, 1.1"
          "winOut, 0.3, -0.3, 0, 1"
          "liner, 1, 1, 1, 1" 
        ];
        animation = [
          "windows, 1, 6, wind, slide"
          "windowsIn, 1, 6, winIn, slide"
          "windowsOut, 1, 5, winOut, slide"
          "windowsMove, 1, 5, wind, slide"
          "border, 1, 1, liner"
          "borderangle, 1, 30, liner, loop"
          "fade, 1, 10, default"
          "workspaces, 1, 5, wind"
        ];
      };
    };
    extraConfig = ''
#Monitors
monitor=DP-1, 1920x1080@144, 1920x0, 1
monitor=DP-2, 1920x1080@144, 0x0, 1
monitor=,preferred,auto,1

#Autostart
#exec-once = wl-paste -t text --watch clipman store --max-items=60 --histpath="~/.local/share/clipman.json"
#exec-once = waybar
#exec-once = mako

# Floating apps
windowrulev2 = float, class: org.gnome.Loupe
windowrulev2 = float, class: antimicrox
windowrulev2 = float, title: YAD
windowrulev2 = float, class: Yad
windowrulev2 = float, class: veracrypt
windowrulev2 = float, class: org.prismlauncher.PrismLauncher
windowrulev2 = float, class: org.gnome.Calculator
windowrulev2 = float, class: org.gnome.TextEditor
windowrulev2 = float, class: gnome-disks
windowrule = float, pavucontrol
#windowrule = float, evince
windowrule = float, imv
windowrule=float,Rofi
windowrule=float,Nautilus
windowrule=float,nemo
windowrule=float,Alacritty
windowrule=float,file-roller
windowrule=float,Helvum
windowrule=float,eog
windowrule=float,mpv
windowrule=float,vlc

# Resizes and moves windows
windowrulev2 = move 700 300, title: Administrator privileges required
windowrulev2 = size 989 707, class: org.prismlauncher.PrismLauncher
windowrulev2 = center, class: org.prismlauncher.PrismLauncher
#windowrule = size 810 610, kitty

# Associate apps with worspaces
windowrulev2=workspace 2 silent, class: X-Plane
windowrulev2=workspace 1, class: google-chrome
windowrule=workspace 9, obs
windowrule=workspace 3 silent, steam
#windowrulev2=workspace 8 silent, class: org.telegram.desktop

# Associate monitors with workspaces
workspace=DP-2, 10
workspace=DP-2, 9
workspace=DP-2, 8
workspace=DP-1, 1
workspace=DP-1, 2
workspace=DP-1, 3
workspace=DP-1, 4
workspace=DP-1, 5
workspace=DP-1, 6
workspace=DP-1, 7

# Blur apps
windowrulev2 = opacity 0.8, title: New Tab - Google Chrome
#layerrule = blur, waybar
windowrulev2 = opacity 0.9, class: org.gnome.Nautilus
windowrulev2 = opacity 0.8, class: corectrl
windowrulev2 = opacity 0.9, class: steam

input {
    kb_layout = us,ru
    kb_variant =
    kb_model =
    kb_options = grp:caps_toggle
    kb_rules =
    follow_mouse = 1
    touchpad {
        natural_scroll = yes
    }
    # mouse sensevity
    accel_profile = flat
    sensitivity = -0.6
}

# Tiling mode
dwindle {

    pseudotile = yes # master switch for pseudotiling. Enabling is bound to mainMod + P in the keybinds section below
    preserve_split = yes # you probably want this
}

master {
   
    new_is_master = 1
    no_gaps_when_only = true
}



gestures {
   
    workspace_swipe = on
}

device:epic mouse V1 {
    sensitivity = -0.6
}

#Binds
$mainMod = SUPER

# Focus window
bind = SUPER, h, movefocus, l
bind = SUPER, l, movefocus, r
bind = SUPER, k, movefocus, u
bind = SUPER, j, movefocus, d

# moving windows
bind = SUPER SHIFT, h, movewindow, l
bind = SUPER SHIFT, l, movewindow, r
bind = SUPER SHIFT, k, movewindow, u
bind = SUPER SHIFT, j, movewindow, d

# Multimeda binds, manage volume
binde=, XF86AudioRaiseVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+
binde=, XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-

# My binds
bind = $mainMod, b, exec, nautilus ~/buffer
bind = $mainMod, x, exec, pactl set-source-volume @DEFAULT_SOURCE@ 94%
bind = $mainMod, m, exec, pactl set-source-mute @DEFAULT_SOURCE@ toggle | notify-send "micro muted/unmuted"
bind = $mainMod, return, exec, kitty
bind = $mainMod, d, exec, rofi -show drun
bind = $mainMod SHIFT, q, killactive 
#bind = $mainMod, z, exec, /home/unix-like/.config/hypr/changeWallpaper2
bind = $mainMod, z, exec, playerctl play-pause
bind = $mainMod SHIFT, space, togglefloating
bind = $mainMod, F, fullscreen
bind = $mainMod, e, exec, /usr/bin/nautilus
bind = $mainMod, n, exec, clipman pick --tool="rofi" --max-items=30
bind = $mainMod ,Print, exec, HYPRLAND_INTERACTIVE_SCREENSHOT_SAVEDIR=/home/unix-like/Pictures/screens /usr/bin/hyprland-interactive-screenshot
bind = ,Print, exec, HYPRSHOT_DIR=/home/unix-like/Pictures/hyprshot /usr/bin/hyprshot -c -m output
bind = ,F10,pass,^(com\.obsproject\.Studio)$
bind = ,XF86Launch5,pass,^(discord)$
bind = $mainMod, c, exec, hyprpicker -a
bind = ALT,Tab,cyclenext

# Moving between desktops
bind = $mainMod, 1, workspace, 1
bind = $mainMod, 2, workspace, 2
bind = $mainMod, 3, workspace, 3
bind = $mainMod, 4, workspace, 4
bind = $mainMod, 5, workspace, 5
bind = $mainMod, 6, workspace, 6
bind = $mainMod, 7, workspace, 7
bind = $mainMod, 8, workspace, 8
bind = $mainMod, 9, workspace, 9
bind = $mainMod, 0, workspace, 10

# Move an application to another desktop and switch to it
#bind = $mainMod SHIFT, 1, movetoworkspace, 1
#bind = $mainMod SHIFT, 2, movetoworkspace, 2
#bind = $mainMod SHIFT, 3, movetoworkspace, 3
#bind = $mainMod SHIFT, 4, movetoworkspace, 4
#bind = $mainMod SHIFT, 5, movetoworkspace, 5
#bind = $mainMod SHIFT, 6, movetoworkspace, 6
#bind = $mainMod SHIFT, 7, movetoworkspace, 7
#bind = $mainMod SHIFT, 8, movetoworkspace, 8
#bind = $mainMod SHIFT, 9, movetoworkspace, 9
#bind = $mainMod SHIFT, 0, movetoworkspace, 10

# move an app without going to desktop
bind = $mainMod SHIFT, 1, movetoworkspacesilent, 1
bind = $mainMod SHIFT, 2, movetoworkspacesilent, 2
bind = $mainMod SHIFT, 3, movetoworkspacesilent, 3
bind = $mainMod SHIFT, 4, movetoworkspacesilent, 4
bind = $mainMod SHIFT, 5, movetoworkspacesilent, 5
bind = $mainMod SHIFT, 6, movetoworkspacesilent, 6
bind = $mainMod SHIFT, 7, movetoworkspacesilent, 7
bind = $mainMod SHIFT, 8, movetoworkspacesilent, 8
bind = $mainMod SHIFT, 9, movetoworkspacesilent, 9
bind = $mainMod SHIFT, 0, movetoworkspacesilent, 10

# resize window vim-like
bind = $mainMod CTRL, h, resizeactive,-50 0
bind = $mainMod CTRL, l, resizeactive,50 0
bind = $mainMod CTRL, k, resizeactive,0 -50
bind = $mainMod CTRL, j, resizeactive,0 50

# wheel scroll to switch workspace
bind = $mainMod, mouse_down, workspace, e-1
bind = $mainMod, mouse_up, workspace, e+1

# mouse resize window
bindm = $mainMod, mouse:272, movewindow
bindm = $mainMod, mouse:273, resizewindow

# resize window using arrows
bind = $mainMod CTRL, left, resizeactive,-50 0
bind = $mainMod CTRL, right, resizeactive,50 0
bind = $mainMod CTRL, up, resizeactive,0 -50
bind = $mainMod CTRL, down, resizeactive,0 50

# Rofi power script
bind = $mainMod, p, exec, ~/.config/waybar/scripts/power-menu/executable_powermenu.sh
    '';
  };
}