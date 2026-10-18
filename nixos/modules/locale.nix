{ ... }:

{
  time.timeZone = "America/Araguaina";
  i18n.defaultLocale = "pt_BR.UTF-8";

  console = {
    font = "Lat2-Terminus16";
    # keyMap = "br-abnt2";
    useXkbConfig = true; # usa as opções do xkb no tty
  };

  services.xserver.xkb = {
    layout = "br";
    variant = "abnt2";
    # options = "eurosign:e,caps:escape";
  };
}
