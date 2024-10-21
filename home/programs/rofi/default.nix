{
  home.file.".config/rofi/config.rasi".text = ''
configuration{
  display-drun: "Run";
  drun-display-format: "{icon} {name}";
  font: "Google Sans Regular 13";
  modi: "drun";
  show-icons: true;
  icon-theme: "Paper";
}
//@theme "/dev/null"



mainbox {
  background-color: @0D0D0D00;
  children: [inputbar, listview];
  padding: 0;
  border-radius: 1px;
  border: 2px;
  border-color: #ebdbb2;
}


* {
  bg:  #1d2021;
  bg2: #ebdbb2;
  bg3: #282828;
  bg4: #b8bb26;
  highlight: #b8bb26;
  fg: #ebdbb2;
  fg2: #1d2021;
  background-color: @bg;
  textcolor: #ffffff;
  border: 0;
  margin: 0;
  padding: 10;
  spacing: 0;
  
}

window {
  location: center;
  width: 20%;
  height: 55%;
  background-color: #0D0D0D00;
  
}

element {
  padding: 0 0;
  text-color: @fg;
  background-color: @bg;
  
}

element-text {
  background-color: inherit;
  text-color: @fg;
  vertical-align: 0.5;
  border-radius: 0px;
}

element-icon selected{
  background-color: @bg2;
  border-radius: 8px 0px 0px 8px;
}

element-text selected {
  background-color: @bg2;
  color: @fg2;
  border-radius: 0px 8px 8px 0px;
  
  
}

highlight {
  color: @bg4;
}

listview {
  background-color: @bg;
  border-radius: 0px;
  
  fixed-height: true;
  margin: 10px;
  color: @fg;
  columns: 1;
  padding: 7;
}

element-icon {
  size: 25;
  padding: 5px ;
}

element selected {
  background-color: @bg;
  
  margin: 0px;

}

inputbar {
  children: [prompt,textbox-prompt-colon, entry];
  padding: 30px 40px 10px 30px;
  border: 0 0 0px 0;
  border-color: @bg2;
  background-color: @bg;
  margin: 0px 0 20px 0;
}

prompt {
  text-color: @fg;
  background-color: @bg3;
  margin: 0px 10px 0px 0px;
  border-radius: 20px;
  padding: 10px 15px 5px 15px;
  enabled: true;
  
}

textbox-prompt-colon {
  font: "Font Awesome 13";
  expand: false;
  padding: 1% 10px 0% 1%;
  margin: 0% 1% 0% 0%;
  text-color: @bg;
  background-color: @fg;
  border-radius: 8px;
  border: 2px;
  border-color: @fg;
  str: " ";
}

entry {
  placeholder: "Search";
  text-color: @fg;
  background-color: @bg3;
  border-radius: 8px;
  border-color: @fg;
  
}
//@theme "/usr/share/rofi/themes/gruvbox-light-hard.rasi"
//@theme "/usr/share/rofi/themes/DarkBlue.rasi"
//@theme "/usr/share/rofi/themes/Arc-Dark.rasi"
//@theme "/usr/share/rofi/themes/docu.rasi"
//@theme "/usr/share/rofi/themes/glue_pro_blue.rasi"
//@theme "/usr/share/rofi/themes/gruvbox-dark-soft.rasi"
//@theme "/usr/share/rofi/themes/gruvbox-dark-hard.rasi"
//@theme "/usr/share/rofi/themes/sidebar-v2.rasi"
//@theme "/usr/share/rofi/themes/arthur.rasi"
//@theme "/home/whyoolw/.local/share/rofi/themes/launchpad.rasi"
//@theme "/home/cublae/.local/share/rofi/themes/launchpad.rasi"
//@theme "/home/cublae/.local/share/rofi/themes/rounded-red-dark.rasi"
//@theme "/home/unix-like/.local/share/rofi/themes/launchpad.rasi"
//@theme "/home/unix-like/.local/share/rofi/themes/rounded-nord-dark.rasi"
//@theme "/home/unix-like/.local/share/rofi/themes/squared-everforest.rasi"
//@theme "/home/unix-like/.local/share/rofi/themes/squared-nord.rasi"
//@theme "/usr/share/rofi/themes/gruvbox-dark.rasi"
//@theme "/home/unix-like/.local/share/rofi/themes/launchpad.rasi"
//@theme "/home/unix-like/.local/share/rofi/themes/rounded-nord-dark.rasi"
//@theme "/usr/share/rofi/themes/gruvbox-dark-soft.rasi"
//@theme "/home/unix-like/.local/share/rofi/themes/spotlight-dark.rasi"
//@theme "/home/unix-like/.local/share/rofi/themes/rounded-gray-dark.rasi"

//@theme "/home/unix-like/.local/share/rofi/themes/spotlight-dark.rasi"

//@theme "/home/unix-like/.local/share/rofi/themes/rounded-gray-dark.rasi"

//@theme "/home/unix-like/.local/share/rofi/themes/launchpad.rasi"

//@theme "/usr/share/rofi/themes/android_notification.rasi"

//@theme "/home/unix-like/.local/share/rofi/themes/rounded-gray-dark.rasi"

//@theme "/usr/share/rofi/themes/android_notification.rasi"

//@theme "/home/unix-like/.local/share/rofi/themes/rounded-gray-dark.rasi"

//@theme "/home/unix-like/.local/share/rofi/themes/spotlight-dark.rasi"

//@theme "/home/unix-like/.local/share/rofi/themes/rounded-gray-dark.rasi"

//@theme "/home/unix-like/.local/share/rofi/themes/spotlight-dark.rasi"

//@theme "/home/unix-like/.local/share/rofi/themes/windows11-grid-dark.rasi"

//@theme "/home/unix-like/.local/share/rofi/themes/windows11-list-dark.rasi"

@theme "/home/unixlike/.local/share/rofi/themes/saga.rasi"
  '';
  home.file.".local/share/rofi/themes/saga.rasi".text = ''
/*****----- Configuration -----*****/
configuration {
  modi:                       "drun,run,filebrowser,window";
    show-icons:                 true;
    display-drun:               "";
    display-run:                "";
    display-filebrowser:        "";
    display-window:             "";
  drun-display-format:        "{name}";
  window-format:              "{w} · {c} · {t}";
}

/*****----- Global Properties -----*****/
* {
    font:                        "SAGA Heavy 10";
    background:                  #05080A;
    background-alt:              #0A0D0F;
    foreground:                  #fff6ff;
    selected:                    #808B9D;
    active:                      #05080A;
    urgent:                      #baf7b5;
}

/*****----- Main Window -----*****/
window {
    /* properties for window widget */
    transparency:                "real";
    location:                    center;
    anchor:                      center;
    fullscreen:                  false;
    width:                       400px;
    x-offset:                    20px;
    y-offset:                    0px;

    /* properties for all widgets */
    enabled:                     true;
    border-radius:               0px;
    cursor:                      "default";
    background-color:            @background;
}

/*****----- Main Box -----*****/
mainbox {
    enabled:                     true;
    spacing:                     0px;
    background-color:            transparent;
    orientation:                 vertical;
    children:                    [ "inputbar", "listbox" ];
}

listbox {
    spacing:                     10px;
    padding:                     10px;
    background-color:            transparent;
    orientation:                 vertical;
    children:                    [ "message", "listview", "mode-switcher" ];
}

/*****----- Inputbar -----*****/
inputbar {
    enabled:                     true;
    spacing:                     0px;
    padding:                     15px 60px;
    background-color:            transparent;
    background-image:            url("~/.config/rofi/img/q.png", width);
    text-color:                  @foreground;
    orientation:                 horizontal;
    children:                    [ "textbox-prompt-colon", "entry" ];
}
textbox-prompt-colon {
    enabled:                     false;
    expand:                      false;
    str:                         "";
    padding:                     8px 12px;
    border:                      0px 4px 4px 4px;
    border-radius:               0px;
    border-color:                @selected;
    background-color:            @background-alt;
    text-color:                  inherit;
}
entry {
    enabled:                     true;
    expand:                      true;
    padding:                     8px 12px;
    border:                      4px 4px 4px 4px;
    border-radius:               0px;
    border-color:                @selected;
    background-color:            @background-alt;
    text-color:                  inherit;
    cursor:                      text;
    placeholder:                 "Search";
    placeholder-color:           inherit;
}

/*****----- Mode Switcher -----*****/
mode-switcher{
    enabled:                     true;
    spacing:                     10px;
    background-color:            transparent;
    text-color:                  @foreground;
}
button {
    padding:                     8px;
    border-radius:               0px;
    background-color:            @background-alt;
    text-color:                  inherit;
    cursor:                      pointer;
    border:                      0% 0% 0% 0%;
    border-radius:               6px;
    border-color:                @selected;
}
button selected {
    background-color:            @selected;
    text-color:                  @active;
}

/*****----- Listview -----*****/
listview {
    enabled:                     true;
    columns:                     1;
    lines:                       4;
    cycle:                       true;
    dynamic:                     true;
    scrollbar:                   false;
    layout:                      vertical;
    reverse:                     false;
    fixed-height:                true;
    fixed-columns:               true;
    spacing:                     10px;
    background-color:            transparent;
    text-color:                  @foreground;
    cursor:                      "default";
}

/*****----- Elements -----*****/
element {
    enabled:                     true;
    spacing:                     10px;
    padding:                     8px;
    border-radius:               0px;
    background-color:            transparent;
    text-color:                  @foreground;
    cursor:                      pointer;
    
}
element normal.normal {
    background-color:            inherit;
    text-color:                  inherit;
}
element normal.urgent {
    background-color:            @urgent;
    text-color:                  @foreground;
}
element normal.active {
    background-color:            @active;
    text-color:                  @foreground;
}
element selected.normal {
    background-color:            @selected;
    text-color:                  @active;
    border:                      0% 0% 0% 0%;
    border-radius:               4px;
    border-color:                @selected;
}
element selected.urgent {
    background-color:            @urgent;
    text-color:                  @foreground;
}
element selected.active {
    background-color:            @urgent;
    text-color:                  @foreground;

}
element-icon {
    background-color:            transparent;
    text-color:                  inherit;
    size:                        26px;
    cursor:                      inherit;

}
element-text {
    background-color:            transparent;
    text-color:                  inherit;
    cursor:                      inherit;
    vertical-align:              0.5;
    horizontal-align:            0.0;
}

/*****----- Message -----*****/
message {
    background-color:            transparent;
}
textbox {
    padding:                     8px;
    border-radius:               0px;
    background-color:            @background-alt;
    text-color:                  @foreground;
    vertical-align:              0.5;
    horizontal-align:            0.0;
}
error-message {
    padding:                     8px;
    border-radius:               0px;
    background-color:            @background;
    text-color:                  @foreground;
}
  '';
}