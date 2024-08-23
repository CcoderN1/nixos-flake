{ pkgs, config, ... }:
{
  programs.btop = {
    package = pkgs.btop.override {
      rocmSupport = true;
    };
    enable = true;
  };
}