{ config, pkgs, lib, ... }:

{

  imports = [
    ./bootloader.nix
    ./input.nix
    ./locale.nix
    ./nix.nix
    ./timezone.nix
  ];
  
  config.systemd-boot.enable = lib.mkDefault true;
  config.input.keymap.fr.enable = lib.mkDefault true;

}
