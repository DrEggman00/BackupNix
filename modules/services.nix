# services

{ config, lib, pkgs, ... }:


{
    services.libinput.enable = true;
    # Enable the OpenSSH daemon.
    # services.openssh.enable = true;

    hardware.bluetooth.enable = true;

    # Configure keymap in X11
    # services.xserver.xkb.layout = "us";
    # services.xserver.xkb.options = "eurosign:e,caps:escape";

    # Enable CUPS to print documents.
    # services.printing.enable = true;

    # Enable sound.
    # services.pulseaudio.enable = true;
    # OR
    services.pipewire = {
        enable = true;
        pulse.enable = true;
    };

    # Enable the X11 windowing system.
    # services.xserver.enable = true;
    services.xserver.enable = true;
    services.displayManager.sddm.enable = true;
    services.displayManager.sddm.wayland.enable = true;
    services.desktopManager.plasma6.enable = true;

  

}