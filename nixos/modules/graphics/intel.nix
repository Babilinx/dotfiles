{ config, pkgs, lib, ...}:

{

  options.graphics.intel.enable = lib.mkEnableOption "enable intel graphics options";

  config = lib.mkIf config.graphics.intel.enable {
    hardware.opengl = {
      enable = true;
      extraPackages = with pkgs; [
        intel-media-driver
        libvdpau-va-gl
      ];
    };
  };

}
