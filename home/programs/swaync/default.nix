{pkgs, ... }:
{
home.file.".config/swaync/style.css".text = ''@define-color foreground #dbd6cb;
@define-color background #090c09;
@define-color cursor #dbd6cb;

@define-color color0 #090c09;
@define-color color1 #9D6A52;
@define-color color2 #CD6845;
@define-color color3 #AF995E;
@define-color color4 #E19C64;
@define-color color5 #3D7785;
@define-color color6 #4CA2B3;
@define-color color7 #dbd6cb;
@define-color color8 #99958e;
@define-color color9 #9D6A52;
@define-color color10 #CD6845;
@define-color color11 #AF995E;
@define-color color12 #E19C64;
@define-color color13 #3D7785;
@define-color color14 #4CA2B3;
@define-color color15 #dbd6cb;

/*
 * vim: ft=less
 */

@define-color noti-border-color rgba(255, 255, 255, 0.9);
@define-color noti-close-bg rgba(255, 255, 255, 0.1);
@define-color noti-close-bg-hover rgba(255, 255, 255, 0.15);
@define-color noti-bg-hover @color5;
@define-color noti-bg-focus @color3;
@define-color noti-urgent #BF616A;

@define-color bg-selected rgb(0, 128, 255);

* {
  color: @foreground;
  font-family: Liga SFMono Nerd Font;
}

.notification-row {
  outline: none;
}

.notification-row:focus,
.notification-row:hover {
  background: @noti-bg-focus;
}

.notification {
  background-color: @background;
  border: 5px solid @color0;
  border-radius: 1em;
  margin: 6px 12px;
  box-shadow: 0 0 0 1px rgba(255, 255, 255, 0.3),
    0 1px 3px 1px rgba(0, 0, 0, 0.7), 0 2px 6px 2px rgba(0, 0, 0, 0.3);
}

.critical {
  background: @noti-urgent;
  padding: 2px;
}

.notification-content {
  background: transparent;
  padding: 6px;
}

.close-button {
  background: @noti-close-bg;
  color: white;
  text-shadow: none;
  padding: 0;
  border-radius: 1em;
  margin-top: 10px;
  margin-right: 16px;
  box-shadow: none;
  border: none;
  min-width: 24px;
  min-height: 24px;
}


.close-button:hover {
  box-shadow: none;
  background: @noti-close-bg-hover;
  transition: all 0.15s ease-in-out;
  border: none;
}

.notification-default-action,
.notification-action {
  padding: 4px;
  margin: 0;
  box-shadow: none;
  background: @color0;
  border: none;
  color: white;
}

.notification-default-action:hover,
.notification-action:hover {
  -gtk-icon-effect: none;
  background: @noti-bg-hover;
}

.notification-default-action {
  border-radius: 12px;
}

/* When alternative actions are visible */
.notification-default-action:not(:only-child) {
  border-bottom-left-radius: 0px;
  border-bottom-right-radius: 0px;
}

.notification-action {
  border-radius: 0px;
  border-top: none;
  border-right: none;
}

/* add bottom border radius to eliminate clipping */
.notification-action:first-child {
  border-bottom-left-radius: 10px;
}

.notification-action:last-child {
  border-bottom-right-radius: 10px;
  border-right: 1px solid @noti-border-color;
}

.image {
}

.body-image {
  margin-top: 6px;
  background-color: white;
  border-radius: 12px;
}

/* notification setting */
.summary {
  font-weight: bold;
  background: transparent;
  color: white;
  text-shadow: none;
}

.time {
  font-weight: bold;
  background: transparent;
  color: white;
  text-shadow: none;
  margin-right: 18px;
}

.body {
  font-weight: normal;
  background: transparent;
  color: white;
  text-shadow: none;
}

/* The "Notifications" and "Do Not Disturb" text widget */
.top-action-title {
  color: white;
  text-shadow: none;
}

.control-center {
  background-color: @background;
  border: 5px solid @color1;
  border-radius: 1em;
}

.control-center-list {
  background: transparent;
}

.floating-notifications {
  background: transparent;
}

/* Window behind control center and on all other monitors */
.blank-window {
  background: transparent;
}

/*** Widgets ***/

/* Title widget */
.widget-title {
  margin: 8px;
  font-weight: bold;
}

.widget-title > button {
  color: white;
  background: @color0;
  border: 3px solid @color0;
  border-radius: 12px;
}

.widget-title > button:hover {
  background: @noti-bg-hover;
}

/* DND widget */
.widget-dnd {
  margin: 8px;
}

.widget-dnd > switch {
  border-radius: 12px;
  background: @color0;
  border: 5px solid @color13;
  box-shadow: none;
}

.widget-dnd > switch:checked {
  background: @color13;
}

.widget-dnd > switch slider {
  background: @noti-bg-hover;
  border-radius: 12px;
}

/* Mpris widget */
.widget-mpris {
  /* The parent to all players */
}

.widget-mpris-player {
  padding: 8px;
  margin: 8px;
}

.widget-mpris-title {
  font-weight: bold;
}

/* Volume and Brightness Widget */
.widget-volume {
  background-color: transparent;
  padding: 4px 8px 8px 8px;
  margin: 0px 8px 8px 8px;
  border-bottom-left-radius: 12px;
  border-bottom-right-radius: 12px;
}
'';
}
