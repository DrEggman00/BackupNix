{ pkgs, ... }:

{
  programs.firefox.enable = true;
  services.flatpak.enable = true;

  #Flatpaks
  

  # Necessário para o portal funcionar (geralmente já vem com o DE)
  xdg.portal = {
    enable = true;
    # Exemplo para GNOME/KDE; escolha o seu:
    # extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
  };


  environment.plasma6.excludePackages = with pkgs.kdePackages; [
	konsole
	kate
  ];

  environment.systemPackages = with pkgs; [
    # Essenciais
    unzip
    adwaita-icon-theme
    vim
    neovim
    wget
    git
    kitty
    ollama
    fastfetch
    starship
    eza
    p7zip
    htop
    xournalpp

    # Desenvolvimento
    krita
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
    kdePackages.dragon
    kdePackages.kdenlive
    telegram-desktop
    bitwarden-desktop
    wireshark

    # Mídia e criação
    obsidian
    thorium-reader
    metasploit
    texliveFull
    unrar
    clippy
    rustfmt
    rustPlatform.rustLibSrc
    cmake
    meson
    clang-tools
    clang-analyzer
    gfortran
    dotnet-sdk
    curl
    bc
    ripgrep
    jq
    axel
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

    (python3.withPackages (ps: with ps; [
       tkinter
       ipython
       ipykernel
       qtconsole
       ipyparallel
       pygobject3
       sphinx
       sphinx-rtd-theme
       opencv4
      # se quiser os do exemplo da wiki:
       pandas
       requests
    ]))
  ];  
}
