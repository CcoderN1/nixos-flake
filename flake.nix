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
  , nixpkgs-stable
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
        rocmSupport = true;
      };
      overlays = [
        (final: prev: {
          over-google-chrome = (import ./overlays/chrome.nix { inherit pkgs; });
          over-steam = (import ./overlays/steam.nix { inherit pkgs; });
          rewaita = (prev.callPackage ./overlays/rewaita.nix {});
          over-gpu-screen-recorder = (prev.callPackage ./overlays/gpu-screen-recorder.nix {});
        })
      ];
    };
    stable = import nixpkgs-stable {
      inherit system;
      config = {
        allowUnfree = true;
        rocmSupport = true;
      };
    };
  in 
  {
    nixosConfigurations.b450 = nixpkgs.lib.nixosSystem {
      specialArgs = {
        inherit inputs system pkgs stable curversion;
      };
      modules = [
        ./nixos/configuration.nix
        home-manager.nixosModules.home-manager
        {  
          home-manager = {
            useGlobalPkgs = true;
            useUserPackages = true;
            users.unixlike = import (./. + "/home/home.nix") ;
            extraSpecialArgs = { inherit curversion inputs stable; };
          };
        }
      ];
    };
  };
}