{ pkgs, ... }:

let
  astronaut = pkgs.sddm-astronaut.override {
    embeddedTheme = "black_hole";
    themeConfig = {
      Background = "${../wallpapers/florest.jpg}";
      Font = "ESPACION";
    };
  };
in
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

   fonts.packages = [
    (pkgs.runCommand "espacion-font" { } ''
      mkdir -p $out/share/fonts/truetype
      cp ${../fonts}/*.ttf $out/share/fonts/truetype/
    '')
  ];
  environment.systemPackages = [ astronaut ];

  # GNOME
  # services.displayManager.gdm.enable = true;
  # services.desktopManager.gnome.enable = true;

  services.libinput.enable = true; # touchpad
}
