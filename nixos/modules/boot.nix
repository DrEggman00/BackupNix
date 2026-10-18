{ pkgs, ... }:

{
  boot = {
    # kernelPackages = pkgs.linuxPackages_latest;

    plymouth.enable = true;

    consoleLogLevel = 0;
    initrd.verbose = false;

    kernelParams = [
      "quiet"
      "splash"
      "loglevel=3"
      "udev.log_level=3"
      "rd.systemd.show_status=false"
      "systemd.show_status=false"
      "vt.global_cursor_default=0"
    ];

    loader = {
      timeout = 0;
      systemd-boot = {
        enable = true;
        configurationLimit = 5;
      };
      efi.canTouchEfiVariables = true;
    };
  };
}
