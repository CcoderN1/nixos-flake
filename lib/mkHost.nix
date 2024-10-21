{ inputs
, ...
}:
{
  mkHost = {
    hostname,
    envir ? "GNOME",
    system ? "x86_64-linux",
    curversion ? "24.11",
    uservars ? ({
      name = "unixlike";
      description = "unixlike"; 
    }),
    deflocale ? ({
      kblayout = "us,ru";
      kbvariant = ",";
      kboption = "grp:caps_toggle";
      timezone = "Europe/Moscow";
      locale = "en_US.UTF-8";
    }),
  }:
  let 
    pkgs = import inputs.nixpkgs {
      inherit system;
      config = {
        allowUnfree = true;
        rocmSupport = true;
      };
      overlays = [
        (final: prev: {
          over-google-chrome = (import ./../overlays/chrome.nix { inherit pkgs; });
          over-steam = (import ./../overlays/steam.nix { inherit pkgs; });
          rewaita = (prev.callPackage ./../overlays/rewaita.nix {});
          over-gpu-screen-recorder = (prev.callPackage ./../overlays/gpu-screen-recorder.nix {});
        })
      ];
    };
    stable = import inputs.nixpkgs-stable {
      inherit system;
      config = {
        allowUnfree = true;
        rocmSupport = true;
      };
    };
  in
  inputs.nixpkgs.lib.nixosSystem {
    specialArgs = {
      inherit inputs system pkgs stable curversion envir;
    };
    modules = [
      ./../nixos/configuration.nix
      inputs.home-manager.nixosModules.home-manager
      {  
        home-manager = {
          useGlobalPkgs = true;
          useUserPackages = true;
          users.unixlike = import (./.. + "/home/home.nix") ;
          extraSpecialArgs = { inherit curversion inputs stable envir; };
        };
      }
    ];
  };
}