{ lib
, config
, pkgs
, inputs
, ...
}:
{
  imports = [
    inputs.anyrun.homeManagerModules.default
  ];
  programs.anyrun = {
    enable = true;
    config = {
      plugins = with inputs.anyrun.packages.${pkgs.system}; [
        applications
        rink
        shell
        stdin
        #symbols
      ];

      width.fraction = 0.25;
      y.fraction = 0.3;
      hidePluginInfo = true;
      closeOnClick = true;
      maxEntries = 8;
    };

    extraConfigFiles = {
      "applications.ron".text = ''
        Config(
          desktop_actions: false,
          max_entries: 5,
          terminal: Some("kitty"),
        )
      '';

      "shell.ron".text = ''
        Config(
          prefix: ">"
        )
      '';
    };
    extraCss = ''
* {
  all: unset;
  font-family: "Source Code Pro";
  font-size: 15px;
}

@import "/home/unixlike/.cache/wal/colors-waybar.css";

box#main {
  background: @color0;
  border-radius: 20px;
  padding: 10px 8px;
  color: @cursor;
}

#entry {
  background: @color0;
  border: 2px solid @cursor;
  border-radius: 16px;
  padding: 10px;
}

#entry selection {
  background: @color2;
}

list#main{
  padding: 10px 0px;
}

list#main > row {
  margin: 5px 0px;
}

#match.activatable {
  background: @color0;
  padding: 6px 3px;
}

#match.activatable:first-child {
  border-top-left-radius: 10px;
  border-top-right-radius: 10px;
  margin: 10px 0px 0px 0px;
}

#match.activatable:last-child {
  border-bottom-left-radius: 10px;
  border-bottom-right-radius: 10px;
}

#match:selected, #match:hover {
  background: @color2;
  color: @cursor;
}
    '';
  };
}

