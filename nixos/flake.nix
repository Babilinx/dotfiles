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
      styx = lib.nixosSystem {
        system = "x86_64-linux";
        modules = [ ./configuration.nix inputs.disko.nixosModules.disko];
      };
    };
  };

}
