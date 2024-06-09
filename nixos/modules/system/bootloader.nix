{pkgs,  config, lib, ... }:

{
  options = {
    systemd-boot.enable = lib.mkEnableOption "use systemd-boot as the bootloader";
  };
  
  config = lib.mkIf config.systemd-boot.enable {
    boot.loader.systemd-boot.enable = true;
    boot.loader.efi.canTouchEfiVariables = true;
  };
}
