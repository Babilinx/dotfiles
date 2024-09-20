{

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.05";
    disko.url = "github:nix-community/disko";
    disko.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = inputs@{ self, nixpkgs, ... }:
    let
      lib = nixpkgs.lib;
    in {
    nixosConfigurations = {
      default = lib.nixosSystem {
        specialArgs = { inherit inputs; };
      };
      akheron = lib.nixosSystem {
        system = "x86_64-linux";
        modules = [ ./hosts/akheron/configuration.nix ./modules inputs.disko.nixosModules.disko ];
      };
      styx = lib.nixosSystem {
        system = "x86_64-linux";
        modules = [ ./hosts/styx/configuration.nix ];
      };
    };
  };

}
