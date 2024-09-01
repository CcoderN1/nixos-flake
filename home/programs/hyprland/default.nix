{pkgs, ...}:
{ 
    wayland.windowManager.hyprland = { 
    enable = true;
    extraConfig = ''
#Monitors
monitor=DP-2, 1920x1080@144, 1920x0, 1
monitor=DP-1, 1920x1080@144, 0x0, 1
monitor=,preferred,auto,1

#System Enviroments
#env = GTK_THEME,adw-gtk3-dark
#env = QT_QPA_PLATFORM,wayland
#env = QT_QPA_PLATFORMTHEME,qt5ct

#Autostart
#exec-once = /usr/lib/kdeconnectd&!
#exec-once = /usr/bin/kdeconnect-indicator&!
exec-once = blueman-applet
exec-once = swww init
exec-once = wl-paste -t text --watch clipman store --max-items=60 --histpath="~/.local/share/clipman.json"
exec-once = /usr/bin/corectrl
exec-once = waybar
exec-once = /usr/bin/lxpolkit
exec-once = hyprctl setcursor Adwaita 24

# Floating apps
windowrulev2 = float, class: org.gnome.Loupe
#windowrulev2 = float, class: gamescope
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
windowrule=float,org.gnome.FileRoller
#windowrule=float,Helvum
windowrule=float,eog
windowrule=float,mpv
windowrule=float,vlc

# Resizes and moves windows
windowrulev2 = move 700 300, title: Administrator privileges required
windowrulev2 = size 989 707, class: org.prismlauncher.PrismLauncher
windowrulev2 = center, class: org.prismlauncher.PrismLauncher
#windowrule = size 810 610, kitty

# Associate apps with worspaces
windowrulev2=workspace 2 silent, class: gamescope
windowrulev2=workspace 2 silent, class: X-Plane
windowrulev2=workspace 1 silent, class: google-chrome
windowrulev2=workspace 3 silent, class: steam
windowrule=workspace 9 silent, obs
#windowrule=workspace 3 silent, steam
#windowrulev2=workspace 8 silent, class: org.telegram.desktop

# Associate monitors with workspaces
workspace=10, monitor:DP-1
workspace=9, monitor:DP-1
workspace=8, monitor:DP-1
workspace=7, monitor:DP-1
workspace=6, monitor:DP-2
workspace=5, monitor:DP-2
workspace=4, monitor:DP-2
workspace=3, monitor:DP-2
workspace=2, monitor:DP-2
workspace=1, monitor:DP-2

# Blur apps
#windowrulev2 = opacity 0.8, title: New Tab - Google Chrome
#layerrule = blur, waybar
windowrulev2 = opacity 0.9, class: org.gnome.Nautilus
windowrulev2 = opacity 0.8, class: corectrl
#windowrulev2 = opacity 0.9, class: steam
#swaync blur
layerrule = blur, swaync-control-center
layerrule = blur, swaync-notification-window
layerrule = ignorezero, swaync-control-center
layerrule = ignorezero, swaync-notification-window
layerrule = ignorealpha 0.1, swaync-control-center
layerrule = ignorealpha 0.1, swaync-notification-window


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
    sensitivity = -0.7
}



general {
    	gaps_in = 5
    	gaps_out = 10
    	border_size = 2
	col.active_border = rgba(BFBDB6ff)
	col.inactive_border = rgba(3A3A3Aff)
    	layout = dwindle
    	#cursor_inactive_timeout = 0
	#apply_sens_to_raw=0

}

decoration {
	rounding = 8
	#multisample_edges = True

	blur {
        enabled = true
        size = 2
        passes = 4
        new_optimizations = true
	}

    drop_shadow = yes
    shadow_range = 8
    shadow_render_power = 5
    col.shadow = rgba(2f343fff)

    # Dimming inactive windows
    #dim_inactive = 0
    #dim_strength = 0.2
}

animations {
    enabled = yes
    bezier = wind, 0.05, 0.9, 0.1, 1.05
    bezier = winIn, 0.1, 1.1, 0.1, 1.1
    bezier = winOut, 0.3, -0.3, 0, 1
    bezier = liner, 1, 1, 1, 1
    animation = windows, 1, 6, wind, slide
    animation = windowsIn, 1, 6, winIn, slide
    animation = windowsOut, 1, 5, winOut, slide
    animation = windowsMove, 1, 5, wind, slide
    animation = border, 1, 1, liner
    animation = borderangle, 1, 30, liner, loop
    animation = fade, 1, 10, default
    animation = workspaces, 1, 5, wind
}


# Tiling mode
dwindle {

    pseudotile = yes # master switch for pseudotiling. Enabling is bound to mainMod + P in the keybinds section below
    preserve_split = yes # you probably want this
}

master {
   
    #new_is_master = 1
    no_gaps_when_only = true
}



gestures {
   
    workspace_swipe = on
}

#Binds
$mainMod = SUPER 

# Focus window
bind = $mainMod, h, movefocus, l
bind = $mainMod, l, movefocus, r
bind = $mainMod, k, movefocus, u
bind = $mainMod, j, movefocus, d

# moving windows
bind = $mainMod SHIFT, h, movewindow, l
bind = $mainMod SHIFT, l, movewindow, r
bind = $mainMod SHIFT, k, movewindow, u 
bind = $mainMod SHIFT, j, movewindow, d
bind = $mainMod SHIFT, c, centerwindow

# Multimeda binds, manage volume
binde=, XF86AudioRaiseVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+
binde=, XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-

# My binds
bind = , F4, exec, ~/.config/waybar/scripts/audio_changer.py
bind = $mainMod, e, exec, nautilus
bind = $mainMod, x, exec, pactl set-source-volume @DEFAULT_SOURCE@ 100%
bind = ,XF86Launch5, exec, sh -c "if pactl list sources | grep -q 'Mute: yes'; then pactl set-source-mute @DEFAULT_SOURCE@ toggle && notify-send 'Micro ON'; else pactl set-source-mute @DEFAULT_SOURCE@ toggle && notify-send 'Micro OFF'; fi"
bind = $mainMod, return, exec, kitty
bind = $mainMod, d, exec, rofi -show drun
bind = $mainMod SHIFT, q, killactive 
#bind = $mainMod, z, exec, /home/unixlike/.config/hypr/changeWallpaper2
bind = $mainMod, z, exec, playerctl play-pause
bind = $mainMod SHIFT, space, togglefloating
bind = $mainMod, F, fullscreen
bind = $mainMod, e, exec, /usr/bin/nautilus
bind = $mainMod, n, exec, clipman pick --tool="rofi" --max-items=30
bind = ,Print, exec, grimblast --freeze copysave area
bind = $mainMod ,Print, exec, grimblast --freeze copysave output
bind = ALT ,F1,pass,^(com\.obsproject\.Studio)$
bind = $mainMod, o, exec, hyprpicker -a
bind = ALT,Tab,cyclenext
bind = $mainMod, A, togglespecialworkspace
bind = $mainMod SHIFT, A, movetoworkspace, special
bind = $mainMod CTRL, A, movetoworkspace,e+0

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