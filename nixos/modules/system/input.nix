{ pkgs, config, lib, ... }:

{
  options = {
    input.keymap.fr.enable = lib.mkEnableOption "use azerty keymap layout";
  };
  
  config = lib.mkIf config.input.keymap.fr.enable { 
    console = {
      keyMap = "fr";
    };
    services.xserver.xkb.layout = "fr";
  };


  #config.services.libinput.enable = true;

}
