{ pkgs, ... }:

{
  hardware.bluetooth = {
    enable = true;
    powerOnBoot = false;
    settings = {
      General = {
        # Ajuda muito com controles Xbox (e outros HID) no BlueZ
        Privacy = "device";
        JustWorksRepairing = "always";
        Class = "0x000100";
        FastConnectable = true;
      };
    };
  };

  # Driver para controles Xbox via Bluetooth
  hardware.xpadneo.enable = true;

  # Desativa ERTM, que causa problemas de conexão/input com o controle Xbox
  boot.extraModprobeConfig = ''
    options bluetooth disable_ertm=1
  '';
}
