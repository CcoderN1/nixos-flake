{
  home.file.".config/fastfetch/config.jsonc".text = ''
{
    "$schema": "https://github.com/fastfetch-cli/fastfetch/raw/dev/doc/json_schema.json",
    "logo": {
        "type": "kitty",
        "height": 18,
        "padding": {
            "top": 2
        }
    },
    "display": {
        "separator": " "
    },
    "modules": [
    "break",
        "break",
        "break",
    {
            "type": "custom",
            "format": "\u001b[90m  \u001b[31m  \u001b[32m  \u001b[33m  \u001b[34m  \u001b[35m  \u001b[36m  \u001b[37m "
        },
    "break",
    {
            "type": "title",
            "keyWidth": 10
        },
        "break",
        {
            "type": "os",
            "key": "󱄅 ",
            "keyColor": "34"
    },
        {
            "type": "kernel",
            "key": " ",
            "keyColor": "34"
        },
    {
    "type": "CPU",
    "key": " ",
    "keyColor": "34"
    },
    {
    "type": "GPU",
    "key": " ",
    "keyColor": "34"

    },

        {
            "type": "packages",
            "format": "{} nixpkgs",
            "key": " ",
            "keyColor": "34"
        },
        {
            "type": "shell",
            "key": " ",
            "keyColor": "34"
        },
        {
            "type": "terminal",
            "key": " ",
            "keyColor": "34"
        },
        {
            "type": "wm",
            "key": " ",
            "keyColor": "34"
        },
        {
            "type": "terminalfont",
            "key": " ",
            "keyColor": "34"
        },
        {
            "type": "uptime",
            "key": " ",
            "keyColor": "34"
        },
           {
                       "type": "command",
            "key": " ",
            "keyColor": "34",
            "text": "birth_install=$(stat -c %W /); current=$(date +%s); time_progression=$((current - birth_install)); days_difference=$((time_progression / 86400)); echo $days_difference days"
        },
        "break",
        {
            "type": "custom",
            "format": "\u001b[90m  \u001b[31m  \u001b[32m  \u001b[33m  \u001b[34m  \u001b[35m  \u001b[36m  \u001b[37m "
        },
        "break",
        "break"
    ]
}
  '';
}