{ pkgs, ... }:

{
  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
    dedicatedServer.openFirewall = true;

    extraCompatPackages = with pkgs; [
      proton-ge-bin
    ];

    package = pkgs.steam.override {
      # Corrige o cursor errado dentro do ambiente FHS da Steam
      extraEnv = {
        XCURSOR_THEME = "breeze_cursors";
        XCURSOR_SIZE = "24";
      };

      extraPkgs = pkgs': with pkgs'; [
        # Tema de cursor
        kdePackages.breeze
        adwaita-icon-theme

        # Bibliotecas extras
        libXcursor
        libXi
        libXinerama
        libXScrnSaver
        libpng
        libpulseaudio
        libvorbis
        stdenv.cc.cc.lib # libstdc++.so.6
        libkrb5
        keyutils
      ];
    };
  };
}
