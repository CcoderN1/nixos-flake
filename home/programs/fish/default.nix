{
  programs.fish = {
    enable = true;
    shellAliases = {
      cat = "bat";
      fs = "ranger";
     };
    functions = {
      fish_greeting = {
        body = "";
      };
    };
    interactiveShellInit = ''
set -gx EDITOR nvim
set -gx VISUAL nvim
    '';
  };
}