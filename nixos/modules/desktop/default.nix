{ config, pkgs, lib, ... }:

{

  imports = [
    ./gnome.nix
    ./sound.nix
  ];
  
  gnome.light.enable = lib.mkDefault true;
  sound.pipewire.enable = lib.mkDefault true;
 
}
