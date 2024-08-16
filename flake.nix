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

  outputs = 
  { self
  , nixpkgs
  , home-manager 
  , ...
  }@inputs: 
  let
    system = "x86_64-linux";
    curversion = "24.11";
    pkgs = import nixpkgs {
      inherit system;
      config = {
        allowUnfree = true;
      };
    };
  in 
  {
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      specialArgs = {
        inherit inputs system pkgs curversion;
      };
      modules = [
        ./nixos/configuration.nix
        home-manager.nixosModules.home-manager
        {  
          home-manager = {
            useGlobalPkgs = true;
            useUserPackages = true;
            users.unixlike = import (./. + "/home/home.nix") ;
            extraSpecialArgs = { inherit curversion; };
          };
        }
      ];
    };
  };
}
