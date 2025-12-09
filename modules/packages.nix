# Packages

{ config, lib, pkgs, ... }:


{
    # programs.firefox.enable = true;

    # List packages installed in system profile.
    # You can use https://search.nixos.org/ to find more packages (and options).
    environment.systemPackages = with pkgs; [
        vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
        wget
        firefox
        nano
        kdePackages.konsole
        htop
        zsh
        git
        bitwarden-desktop
        telegram-desktop
        vscodium
        fastfetch
        btop
        unrar
        p7zip
        unzip
        ubuntu-sans
        profont
        nerd-fonts.profont
        clang
        nodejs
        make
   ];
}