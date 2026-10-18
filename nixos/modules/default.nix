# Lista de módulos. Para desativar algo, comente a linha.
{ ... }:

{
  imports = [
    ./boot.nix
    ./networking.nix
    ./locale.nix
    ./nix.nix
    ./desktop.nix
    ./audio.nix
    ./bluetooth.nix
    ./graphics.nix
    ./hardware.nix
    ./database.nix
    ./services.nix
    ./users.nix
    ./packages.nix
    ./steam.nix
    ./virtual.nix
  ];
}
