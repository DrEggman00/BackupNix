# nvidia


{ config, lib, pkgs, ... }:

{

    hardware.graphics.enable = true;
    services.xserver.videoDrivers = [ "nvidia" ];

    hardware.nvidia = {
        modesetting.enable = true;
        powerManagement.enable = false;   # opcional
        nvidiaSettings = true;            # opcional
        open = false;                     # GTX 1650 NÃO suporta o open kernel module
    };



}