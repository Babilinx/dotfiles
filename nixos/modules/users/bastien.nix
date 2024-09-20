{ config, pkgs, lib, ... }:

{

  options.users.bastien.enable = lib.mkEnableOption "enable user bastien";

  config = lib.mkIf config.users.bastien.enable {
    users.users.bastien = {
      isNormalUser = true;
      extraGroups = [ "wheel" ];
    };
  };

}
