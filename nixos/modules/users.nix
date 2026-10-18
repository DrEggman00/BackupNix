{ pkgs, ... }:

{
  programs.fish.enable = true;

  users.users.dr = {
    isNormalUser = true;
    description = "Dr. Heinrich Stahlwerk";
    shell = pkgs.fish;
    extraGroups = [ "wheel" "networkmanager" "video" "audio" ];
  };
}
