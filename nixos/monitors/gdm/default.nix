{ config, pkgs, ... }:

let	
	# Use monitor configuration for GDM (desktop monitor primary). See https://discourse.nixos.org/t/gdm-monitor-configuration/6356/4
	monitorsXmlContent = builtins.readFile ./monitors.xml;
	monitorsConfig = pkgs.writeText "gdm_monitors.xml" monitorsXmlContent;
in
{

	# Move files into target system
	systemd.tmpfiles.rules = [
		"L+ /run/gdm/.config/monitors.xml - - - - ${monitorsConfig}"
	];
}