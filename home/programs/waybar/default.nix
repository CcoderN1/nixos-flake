{pkgs, ... }:
{
  programs.waybar = {
    enable = true;
    package = pkgs.waybar;
  };
  home.file.".config/waybar/config.jsonc".text = ''// -*- mode: jsonc -*-
{	
		"width": 920,
		"height": 0,
    "layer": "top",
    "position": "bottom",
		"exclusive": true,
		"passthrough": false,
		"spacing": 5,
		"margin-bottom": 0,
		"margin-top": 0,
		"fixed-center": true,
		"reload_style_on_change": true,
		"modules-left": ["hyprland/workspaces"],
		"modules-center": ["custom/notifications","clock","group/powerB"],
		"modules-right": ["group/ttray"],



"hyprland/workspaces": {
  "disable-scroll": true,
  "show-special": true,
  "on-scroll-up": "hyprctl dispatch workspace -1",
  "on-scroll-down": "hyprctl dispatch workspace +1",
	"format": "{icon}",
		"format-icons": {
			"1": "",
			"2": "",
			"3": "",
			"4": "",
			"5": "",
			"6": "",
			"7": "",
			"8": "",
			"9": "",
			"10": "",
			"special": "",
		},
       "persistent-workspaces": {
             "*": 1
       }
},


	"network": {
        	"format-wifi": "󰤨 ",
        	"format-ethernet": "󰈀 ",
        	"format-linked": "󰈀 ",
        	"format-disconnected": "󰤭",
	},

 
  "custom/notifications": {
    "tooltip": false,
    "format": "{icon}",
    "format-icons": {
      "notification": "<span foreground='#DB4740'><sup></sup></span>",
      "none": "󰂜",
      "dnd-notification":"<span foreground='#DB4740'><sup>󰵚</sup></span>",
      "dnd-none": "󰂛",
      "inhibited-notification": "<span foreground='#DB4740'><sup></sup></span>",
      "inhibited-none": "",
      "dnd-inhibited-notification": "<span foreground='#DB4740'><sup></sup></span>",
      "dnd-inhibited-none": ""
    },
    "return-type": "json",
    "exec-if": "which swaync-client",
    "exec": "swaync-client -swb",
    "on-click": "swaync-client -t -sw",
    "on-click-right": "swaync-client -d -sw",
    "escape": true
  },
"group/powerB": {
	 "orientation": "horizontal",
	 "drawer": {
         "transition-duration": 500,
         "transition-left-to-right": true,
     	 },
	 
	 "modules": [
	"hyprland/language",
	"custom/power",
        "custom/lock",
        "custom/reboot",
        "custom/logout",
        "custom/sleep"
    ]

},
"custom/power": {
"format": "  ",
"on-double-click": "systemctl poweroff",
},
"custom/lock": {
"format": "  ",
"on-double-click": "hyprlock",
},

"custom/reboot": {
"format": "  ",
"on-double-click": "systemctl reboot",
},

"custom/logout": {
"format": " 󰍃 ",
"on-double-click": "hyprctl dispatch exit",
},

"custom/sleep": {
"format": "󰒲 ",
"on-double-click": "systemctl suspend & hyprlock",
},

	"group/ttray": {
		"orientation": "horizontal",
		"modules": [
			"tray",
			"battery",
			"backlight",
			"pulseaudio",
			"network",
			"disk"
		]
	},
	"tray": {
		"icon-size": 16,
		"spacing": 8,
		"icon-theme": "Skeuowaita"
	},
    
		"clock": {
			"format": "{:%H:%M:%S}",
			"tooltip-format": "{:%OI:%M:%S}",
   		"timezone": "Europe/Riga",
    		"interval": 1,
		"tooltip": "false",
        	"format-alt": "{:%d.%m.%y}",
    "on-click-right": "bash ~/.config/rofi/calendar/calendar.sh"

		},

	
     "pulseaudio": {
		"format": " {icon} {volume} {format_source}",
        	"format-muted": "󰝟 ",
		"format-source": "󰍬 ",
		"format-source-muted": "󰍭 ",
		"format-icons": {
		"default": ["󰕿 ", "󰖀 ", "󰕾 "]},
		"on-click": "pavucontrol",
    		"tooltip-format": "{volume}%"
  },
 
        	
    	"hyprland/language": {
        	"format": "{}",
			"format-en": "en",
			"format-ru": "ru"
			    	},
    "battery": {
	    "interval": 5,
        "states": {
            "warning": 40,
            "critical": 25
        },
        "format": "  {icon}  {capacity}",
	"format-alt": "{icon}  {capacity}",
        "format-charging":"{icon} ",
        "format-plugged": "{icon} ",
        "format-full": "{icon} !",
        "format-icons": ["", "", "", "", ""],
        "tooltip-format": "{}"
    },

    "backlight": {
    "device": "intel_backlight",
"format": "{percent} {icon}",
    "format-icons": ["󰃜","󰃝","󰃞"],
    "on-scroll-up":   "brightnessctl s 1%+",
    "on-scroll-down": "brightnessctl s 1%-",
    "on-click-right": "brightnessctl s 0"
},
	"disk": {
  	"format": "󰋊 {free}",
		"interval": 30,
		"path": "/home/unixlike"
	},
}
'';

home.file.".config/waybar/style.css".text = ''* {
	font-family: google-sans;
	font-weight: bold;
	min-height: 0;
	border-radius: 16 16 0 0;
}

window#waybar {
	background-color: @background;
	transition-property: background-color;
	transition-duration: .5s;
}

@import "/home/unixlike/.cache/wal/colors-waybar.css";


#workspaces {
	background-color: @background;
	font-family: 'Symbols Nerd Font';
	font-size: 13pt;
	padding: 0 0 0 8;
}

#workspaces button {
    padding: 0 0 0 6;
    margin: 8px 3px;
    border-radius: 32px;
    color: @color11;
    background-color: @color4;
        transition: all 0.3s ease-in-out;

}

#workspaces button:hover {
	background-color: @color2;
	color: @color2;
	border-radius: 16;

}

#workspaces button.active {
    background-color: @color2;
    padding: 0px 16px;
    border-radius: 16px;
    opacity: 1.0;
        transition: all 0.3s ease-in-out;

}

#tray {
	background: @background;
	color: @color9;
	font-size: 14px;
	padding: 0 8 0 8px;
	margin: 5 10px;
	border: solid 2px @color2;
	border-radius: 12;

}
#battery {
	background: @background;
	color: @color6;
	padding: 0 0 0 0;
}

#network, #disk {
	background: @background;
	color: @color6;
	padding: 0 8 0 0;
}

#custom-notifications {
	color: @color2;
	padding: 5 8 5 5;
	font-size: 14pt;
}

#pulseaudio {
	background: @background;
	color: @color6;
	padding: 0 8 0 0;
	font-size: 15;
}

#clock {
	background: @background;
	color: @color6;
	font-size: 17px;
	padding: 5 5px;

}

#language {
	background: @background;
	color: @color6;
	padding: 0 5 0 8;
	margin: 1 10 1 1px;
	font-size: 16px;
	border-radius: 6
}
#backlight {
	background: @background;
	color: @color6;
	padding: 0 0 0 10;
	margin: 1 10 1 1px;
	font-size: 16px;
	border-radius: 6

}
'';
}