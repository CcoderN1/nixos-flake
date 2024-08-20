{ pkgs
, ...
}:
{
  systemd.user.services = {
    spoof-dpi.enable = true;
    corectrl.enable = true;
  };
}