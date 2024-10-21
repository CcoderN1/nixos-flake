{
  description = "unixlike_flake";

  inputs = {
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
      b450 = mkSystem {
        hostname = "b450";
      };
    };
  };
}