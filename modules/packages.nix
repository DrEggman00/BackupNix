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
	sddm-astronaut
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
        gnumake
	ncdu
   ];
	
   #virtualisation.virtualbox.host.enable = true;
   users.extraGroups.vboxusers.members = [ "user-with-access-to-virtualbox" ];
   nixpkgs.config.allowUnfree = true;
   virtualisation.virtualbox.host.enable = true;
   virtualisation.virtualbox.host.enableExtensionPack = true;
   virtualisation.virtualbox.guest.enable = true;
   virtualisation.virtualbox.guest.dragAndDrop = true;

   nixpkgs.config.allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) [
    	"steam"
   	 "steam-unwrapped"
   ];


   programs.steam = {
  		enable = true;
  		remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
  		dedicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedicated Server
	};

}
