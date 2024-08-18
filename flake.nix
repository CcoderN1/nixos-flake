{
  description = "unixlike_flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixpkgs-stable.url = "github:nixos/nixpkgs/nixos-24.05";
    yandex-music.url = "github:cucumber-sp/yandex-music-linux";
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
      overlays = [
        (final: prev: {
          over-google-chrome = (import ./overlays/chrome.nix { inherit pkgs; });
          over-steam = (import ./overlays/steam.nix { inherit pkgs; });
          spoof-dpi = (prev.callPackage ./overlays/spoof-dpi.nix {});
        })
      ];
    };
  in 
  {
    nixosConfigurations.b450 = nixpkgs.lib.nixosSystem {
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
