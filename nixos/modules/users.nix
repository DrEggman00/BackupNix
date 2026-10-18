{ pkgs, ... }:

{
  programs.fish.enable = true;

  users.users.dr = {
    isNormalUser = true;
    shell = pkgs.fish;
    extraGroups = [ "wheel" "networkmanager" "video" "audio" ];
  };
}
