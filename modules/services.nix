# services

{ config, lib, pkgs, ... }:


{
    services.libinput.enable = true;
    # Enable the OpenSSH daemon.
    # services.openssh.enable = true;
}