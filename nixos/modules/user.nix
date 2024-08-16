{ pkgs 
, ...
}:
{
  users.users.unixlike = {
    isNormalUser = true;
    description = "unixlike";
    extraGroups = [ "networkmanager" "wheel" "openrazer" ];
    shell = pkgs.fish;
    ignoreShellProgramCheck = true;
  };
}