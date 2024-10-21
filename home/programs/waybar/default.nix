{
  home.file.".config/waybar/config".text = ''
{
  "layer": "top",
  "position": "bottom",
	"modules-left": ["hyprland/workspaces", "custom/playerctl"],
	"modules-center": ["temperature"],
	"modules-right": ["tray", "custom/notify", "hyprland/language", "memory", "pulseaudio", "disk", "clock"],
    //	Modules configuration
	"clock": {
	"format": "󱑂 {:%H:%M:%S}",
	"interval": 1,
	"tooltip": "false",
//      "tooltip-format": "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>",
        "format-alt": " {:%d/%m/%Y}",
	"on-click-right": "gsimplecal"
	},

	"hyprland/language": {
        "format": "{}",
        "format-en": "en",
        "format-ru": "ru",
        },

	"hyprland/workspaces": {
        "active-only": false,
	"format": "{icon}",
	"on-click": "activate",
	"format-icons": {
	  "1": "1",
    "2": "2",
    "3": "3",
    "4": "4",
    "5": "5",
    "6": "6",
    "7": "7",
    "8": "8",
    "9": "9",
		"10": "10",
	},

},
    "custom/playerctl": { "format": "{icon}", "return-type": "json",
      "max-length": 64,
      "exec": "playerctl -a metadata --format '{\"text\": \"{{artist}} - {{markup_escape(title)}}\", \"tooltip\": \"{{playerName}} : {{markup_escape(title)}}\", \"alt\": \"{{status}}\", \"class\": \"{{status}}\"}' -F",
      "on-click": "playerctl play-pause",
      "on-click-right": "playerctl next",
      "on-click-middle": "playerctl next",
      "format-icons": {
        "Playing": "<span foreground='#FFFFFF'>󰒮 󰐌 󰒭</span>",
        "Paused": "<span foreground='#EBBCBA'>󰒮 󰏥 󰒭</span>"
      },
    },

  "memory": {
    "format": "󰻠 {used}",
    "interval": 5
  },

  "cpu": {
    "format": "CPU: {usage}%",
    "format-alt": "CPU: {avg_frequency} GHz",
    "interval": 5
  },

  "disk": {
    "format": "󰋊 {free}",
    "interval": 30,
    "path": "/home/unix-like"
  },
	"tray": {
		"icon-size": 16,
		"spacing": 5
	},

    "pulseaudio": {
		"format": "{icon} {volume}% {format_source}",
        	"format-muted": "󰝟",
		"format-source": " {volume}%",
		"format-source-muted": " MUTE ",
		"format-icons": {
		"default": ["󰕿", "󰖀", "󰕾"]

		},
		  "scroll-step": 5,
        "on-click": "pavucontrol",
        "ignored-sinks": ["Easy Effects Sink"]
  },
	"temperature": {
	//	"hwmon-path": "/sys/devices/pci0000:00/0000:00:18.3/hwmon/hwmon3/temp1_input",
		"hwmon-path": "/sys/class/hwmon/hwmon3/temp1_input",
		"format": "CPU: {temperatureC}°C ",
		"interval": 5,
	},
	
	"custom/tempgpu": {
	"exec": "/home/unix-like/.local/bin/gputemp",
	"format": "GPU: {}°C ",
	"interval": 5,
	},
	
	"custom/fan": {
	"exec": "sensors | awk '/fan1:/ {print $2}'",
	"format": "RPM: {} ",
	"interval": 5,
	},

	"custom/gpu-usage": {
	"exec": "cat /sys/class/hwmon/hwmon1/device/gpu_busy_percent",
	"format": "GPU: {}%",
    	"interval": 5,
	},
	
	"custom/notify":{
	"format": "󰂚",
    	"format-alt": "󰂛",
    	"on-click": "dunstctl set-paused toggle"
    },
  }
}
  '';
#   home.file.".config/waybar/style.css".text = ''
# * {
#     border: none;
#     border-radius: 0px;
#     font-family: Iosevka;
#     font-size: 12px;
#     font-style: normal;
#     min-height: 0;
# }

# @import "themes/NordIce.css";

# window#waybar {
#     background: @panel-color;
#     border-bottom: 0px solid #000000;
#     color: @bg-color;
# }

# #workspaces {
#     color: @font-workspace-noactive-color;
#     border-radius: 6px;
#     background: @bg-color;
#     margin: 5px 5px 5px 5px;
#     padding: 0px 5px;
#     border: solid 1px @border-color;
#     font-weight: bold;
#     font-style: normal;
#     font-size: 12px;
# }

# #workspaces button {
#     padding: 0px 5px;
#     border-radius: 6px;
#     color: @font-color;
#     /* color: black; */
#     background-color: transparent;
#     text-shadow: 1px 1px 3px rgba(0,0,0,0.75);
# }

# #workspaces button.active {
#     transition: ease 0.3s;
#     color: @font-workspace-active-color; 
#     background: @bg-workspace-active-color;
#     border-radius: 6px;
#     text-shadow: 1px 1px 3px rgba(0,0,0,0.75);
# }

# #workspaces button:hover {
# 	color: #626975;
# }

# #custom-date, #clock, #custom-randwall, #custom-launcher {
# 	background: transparent;
# 	padding: 5px 5px 5px 5px;
# 	margin: 5px 5px 5px 5px;
#   border-radius: 6px;
#   border: solid 0px #EBDBB2;
# }

# #custom-date {
# 	color: #D3869B;
# }

# #custom-power {
# 	color: #24283b;
# 	background-color: #db4b4b;
# 	border-radius: 5px;
# 	margin-right: 10px;
# 	margin-top: 5px;
# 	margin-bottom: 5px;
# 	margin-left: 0px;
# 	padding: 5px 10px;
# }

# #tray {
#     background: @bg-color;
#     margin: 5px 5px 5px 5px;
#     border-radius: 6px;
#     padding: 0px 5px;
#     /*border-right: solid 1px #1D1D1D;*/
#     border: solid 1px #282828;
# }

# #clock {
#     color: @font-color;
#     background: @bg-color;
#     margin: 5px 5px 5px 5px;
#     border-radius: 6px;
#     padding: 0px 5px;
#     border: solid 1px #282828;
#      font-weight: bold;
#   font-style: normal;
#   font-size: 12px;
# }

# #backlight {
#     background-color: #24283b;
#     color: #db4b4b;
#     border-radius: 0px 0px 0px 0px;
#     margin: 5px;
#     margin-left: 0px;
#     margin-right: 0px;
#     padding: 0px 0px;
# }

# #bluetooth {
#     color: @font-color;
#     border-radius: 8px;
#     margin-left: 10px;
#     margin-right: -5px;
#     text-shadow: 1px 1px 3px rgba(0,0,0,0.75);
# }

# #bluetooth.connected {
#     color: #B8BB26;
#     border-radius: 8px;
# }

# #bluetooth.off {
#     color: #928374;
#     border-radius: 8px;
# }
# #network, #pulseaudio,#language{
#     color: @font-color;
#     background: @bg-color;
#     margin: 5px 5px 5px 5px;
#     border-radius: 6px;
#     padding: 0px 5px;
#     border: solid 1px #282828;
#      font-weight: bold;
#   font-style: normal;
#   font-size: 12px;
# }

# #custom-playerctl {
# 	background: @bg-color;
# 	padding-left: 15px;
# 	padding-right: 14px;
# 	border-radius: 6px;
#   /*border-left: solid 1px #1D1D1D;*/
#   /*border-right: solid 1px #1D1D1D;*/
#   margin-top: 5px;
#   margin-bottom: 5px;
#   margin-left: 0px;
#   font-weight: normal;
#   font-style: normal;
#   font-size: 12px;
#   /* Add a shadow to the bakground */
#   /* box-shadow: 0px 1px 1px #EBDBB2; */
#   border: 1px solid #282828;
# }

# #custom-playerlabel {
#     background: transparent;
#     padding-left: 10px;
#     padding-right: 15px;
#     border-radius: 6px;
#     /*border-left: solid 1px #1D1D1D;*/
#     /*border-right: solid 1px #1D1D1D;*/
#     margin-top: 5px;
#     margin-bottom: 5px;
#     font-weight: bold;
#     font-style: normal;
#     text-shadow: 1px 1px 3px rgba(0,0,0,0.75);
# }

# #window {
#     background: #000000;
#     padding-left: 15px;
#     padding-right: 15px;
#     border-radius: 6px;
#     /*border-left: solid 1px #1D1D1D;*/
#     /*border-right: solid 1px #1D1D1D;*/
#     margin-top: 5px;
#     margin-bottom: 5px;
#     font-weight: normal;
#     font-style: normal;
# }

# #custom-wf-recorder {
#     padding: 0 20px;
#     color: #CC241D;
#     background-color: #000000;
# }

# #cpu {
#     background-color: @bg-color;
#     color: @font-color;
#     border-radius: 6px;
#     margin: 5px;
#     margin-left: 5px;
#     margin-right: 5px;
#     padding: 0px 10px 0px 10px;
#     font-weight: bold;
#     border: 1px solid #282828;
# }
# #custom-cava{
#     background-color: #000000;
#     /*color: #FABD2D;*/
#     border-radius: 6px;
#     margin: 5px;
#     margin-left: 5px;
#     margin-right: 5px;
#     padding: 0px 10px 0px 10px;
#     font-weight: bold;
#     border: 1px solid #282828;
# }

# #custom-gpu-usage, #custom-notify, #custom-fan, #custom-tempgpu, #temperature, #disk, #memory {
#     background-color: @bg-color;
#     color: @font-color;
#     border-radius: 6px;
#     margin: 5px;
#     margin-left: 5px;
#     margin-right: 5px;
#     padding: 0px 10px 0px 10px;
#     font-weight: bold;
#     border: 1px solid #282828;
# }
#   '';
  home.file.".config/waybar/themes/theme.css".text = ''
/home/unix-like/.config/waybar/themes/IceBerg.css
  '';
  home.file.".config/waybar/themes/transperent.css".text = ''
@define-color bg-color #000000;
@define-color font-color #BFBDB6;
@define-color bg-workspace-active-color #FFFFFF;
@define-color font-workspace-active-color #626975;
@define-color font-workspace-noactive-color #626975;
@define-color border-color #282828;
@define-color panel-color rgba(0, 0, 0, 0);
/*@define-color panel-color #11151C;*/
  '';
  home.file.".config/waybar/themes/RosePine.css".text = ''
@define-color bg-color #252235;
@define-color font-color #C4A7E7;
@define-color bg-workspace-active-color #5b396e;
@define-color font-workspace-active-color #c4bdff;
@define-color font-workspace-noactive-color #B8BB26;
  '';
  home.file.".config/waybar/themes/IceBerg.css".text = ''
@define-color bg-color #1F2531;
@define-color font-color #BFBDB6;
@define-color bg-workspace-active-color #FFFFFF;
@define-color font-workspace-active-color #626975;
@define-color font-workspace-noactive-color #626975;
  '';
}