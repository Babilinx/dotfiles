{ config, pkgs, ... }:

{

  environment.systemPackages = with pkgs; [
    gnome-console
    gnome-text-editor
    adw-gtk3
    gnome.gnome-tweaks
    git
  ];

}
