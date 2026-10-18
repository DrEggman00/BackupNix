{ pkgs, ... }:

{
  programs.firefox.enable = true;

  environment.systemPackages = with pkgs; [
    # Essenciais
    vim
    neovim
    wget
    git
    kitty
    fastfetch
    starship
    eza
    p7zip

    # Desenvolvimento
    vscode
    codex
    clang
    gcc
    gdb
    rustc
    cargo
    rust-analyzer
    nodejs_26
    php
    opencv
    mariadb

    # Internet e comunicação
    google-chrome
    telegram-desktop
    bitwarden-desktop
    wireshark

    # Mídia e criação
    audacity
    blender
    ffmpeg
    gimp
    obs-studio
    aseprite
    libreoffice

    # Jogos e virtualização
    retroarch
    pcsx2
    virt-manager
    qemu
    libvirt

    # Extras
    gum 
    sddm-astronaut
  ];
}
