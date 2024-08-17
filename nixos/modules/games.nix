{ pkgs
, ...
}:
{
  programs = {
    steam = {
      enable = true;
      package = pkgs.over-steam;
   };
  };
  boot.kernel.sysctl = {
    "vm.max_map_count" = 2147483642;
  };
}