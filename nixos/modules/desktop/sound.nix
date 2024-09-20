{ pkgs, config, lib, ...}:

{
  
  options.sound.pipewire.enable = lib.mkEnableOption "enable pipewire";
  
  config = lib.mkIf config.sound.pipewire.enable {
    hardware.pulseaudio.enable = false;
    services.pipewire = {
      enable = true;
      pulse.enable = true;
    };
  };
}
