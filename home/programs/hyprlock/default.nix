{
  home.file.".config/hypr/hyprlock.conf".text = ''
  background {
    monitor =
    path = /home/whyoolw/Pictures/dphoto-1533135091724-62cc5402aa20.png  # only png supported for now
    # color = $color1

    # all these options are taken from hyprland, see https://wiki.hyprland.org/Configuring/Variables/#blur for explanations
    blur_size = 4
    blur_passes = 3 # 0 disables blurring
    noise = 0.0117
    contrast = 1.3000 # Vibrant!!!
    brightness = 0.8000
    vibrancy = 0.2100
    vibrancy_darkness = 0.0
}

input-field {
    monitor =
    size = 250, 50
    outline_thickness = 3
    dots_size = 0.26 # Scale of input-field height, 0.2 - 0.8
    dots_spacing = 0.64 # Scale of dots' absolute size, 0.0 - 1.0
    dots_center = true
    outer_color = $color0
    inner_color = $color0
    font_color = $color6
    fade_on_empty = true
    placeholder_text = <i>Password...</i> # Text rendered in the input box when it's empty.
    hide_input = false

    position = 0, 50
    halign = center
    valign = bottom
}

# Current time
label {
    monitor =
    text = cmd[update:1000] echo "<b><big> $(date +"%H:%M:%S") </big></b>"
    color = $color6
    font_size = 64
    font_family = JetBrains Mono Nerd Font 10
    shadow_passes = 3
    shadow_size = 4

    position = 0, 90
    halign = center
    valign = center
}

# Date
label {
    monitor =
    text = cmd[update:18000000] echo "<b> "$(date +'%A, %-d %B %Y')" </b>"
    color = $color7
    font_size = 24
    font_family = JetBrains Mono Nerd Font 10

    position = 0, -16
    halign = center
    valign = center
}
  '';
}