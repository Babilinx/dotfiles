{ config, pkgs, lib, ... }:

{
  
  options = {
#    gnome.enable = lib.mkEnableOption "enable GNOME DE";
    gnome.light.enable = lib.mkEnableOption "lightify GNOME";
  };
  
  config = lib.mkIf config.gnome.light.enable {
    services.xserver.enable = true;


    services.xserver.displayManager.gdm.enable = true;
    services.xserver.desktopManager.gnome.enable = true;

    # Don't install unnecessary apps
    services.gnome.core-utilities.enable = false;
    services.gnome.gnome-remote-desktop.enable = false;

    environment.gnome.excludePackages = with pkgs.gnome; [
      gnome-shell-extensions
      pkgs.gnome-tour
    ];
  };

}
