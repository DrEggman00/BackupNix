{ pkgs, ... }:

{
  services.xserver.enable = true;

  # KDE Plasma 6
  services.desktopManager.plasma6.enable = true;
  

  services.displayManager.sddm = {
    enable = true;
    wayland.enable = true;   # opcional, remova se usa X11
    theme = "sddm-astronaut-theme";
    extraPackages = with pkgs.kdePackages; [
      qtmultimedia
      qtsvg
      qtvirtualkeyboard
    ];
  };

  # GNOME
  # services.displayManager.gdm.enable = true;
  # services.desktopManager.gnome.enable = true;

  services.libinput.enable = true; # touchpad

  # services.printing.enable = true;
}
