{ config, pkgs, ... }:
{
  disko.devices = {
    disk = {
      main = {
        type = "disk";
        device = "/dev/nvme0n1";
        content = {
          type = "gpt";
          partitions = {
            ESP = {
              size = "512M";
              type = "EF00";
              content = {
                type = "filesystem";
                format = "vfat";
                mountpoint = "/boot";
              };
            };
            root = {
              size = "100%";
              content = {
                type = "btrfs";
                extraArgs = [ "-f" ];
                subvolumes = {
                  "/@" = {
                    mountOptions = [ "noatime" "compress=zstd:1" ];
                    mountpoint = "/";
                  };
                  "/@nix" = {
                    mountOptions = [ "noatime" "compress=zstd:1" ];
                    mountpoint = "/nix";
                  };
                  "/@home" = {
                    mountOptions = [ "noatime" "compress=zstd" ];
                    mountpoint = "/home";
                  };
                  "/@home/bastien" = { };
                };
              };
            };
          };
        };
      };
    };
  };
}

