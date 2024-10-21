{
  description = "unixlike_flake";

  inputs = {
    hyprland.url = "github:hyprwm/Hyprland";
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixpkgs-stable.url = "github:nixos/nixpkgs/nixos-24.05";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { ... }@inputs: 
  let
    mkSystem = (import ./lib/mkHost.nix { inherit inputs; }).mkHost;
  in 
  {
    nixosConfigurations = {
      b450-GNOME = mkSystem {
        hostname = "b450";
      };
      b450-Hyprland = mkSystem {
        hostname = "b450";
        envir = "Hyprland";
      };
    };
  };
}