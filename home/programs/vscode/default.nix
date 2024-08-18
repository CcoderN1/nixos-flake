{ pkgs, ... }:
{
  programs.vscode = {
    enable = true;
    package = pkgs.vscode;
    enableUpdateCheck = true;
    enableExtensionUpdateCheck = true;
    userSettings = {
      "window.titleBarStyle" = "custom";
      "telemetry.telemetryLevel" = "off";
      "editor.fontSize" = "14";
      "editor.fontFamily" = "JetBrainsMono Nerd Font";
      "terminal.integrated.fontFamily" = "JetBrainsMono Nerd Font";
      "extensions.experimental.affinity" = {
        "asvetliakov.vscode-neovim" = 1;
      };
    };
    extensions = with pkgs.vscode-extensions; [
      jnoortheen.nix-ide
      asvetliakov.vscode-neovim
    ];
  };
}