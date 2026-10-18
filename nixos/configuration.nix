# Ponto de entrada. Só importa o hardware e a pasta de módulos.
{ ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./modules
  ];

  # NÃO altere depois da instalação (veja `man configuration.nix`).
  system.stateVersion = "26.05";
}
