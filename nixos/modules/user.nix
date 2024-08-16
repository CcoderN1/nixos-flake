{ pkgs 
, ...
}:
{
  users.users.unixlike = {
    isNormalUser = true;
    description = "unixlike";
    extraGroups = [ "networkmanager" "wheel" ];
    shell = pkgs.fish;
    ignoreShellProgramCheck = true;
  };
}