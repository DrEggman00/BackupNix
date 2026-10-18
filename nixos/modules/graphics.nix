# GPU híbrida: Intel Iris Xe + NVIDIA GTX 1650 (PRIME offload)
{ ... }:

{
  hardware.graphics.enable = true;
  hardware.graphics.enable32Bit = true;
  services.xserver.videoDrivers = [ "nvidia" ];

  hardware.nvidia = {
    modesetting.enable = true;
    open = true;
    powerManagement.enable = true;

    prime = {
      offload.enable = true;
      offload.enableOffloadCmd = true; # comando `nvidia-offload`
      intelBusId = "PCI:0:2:0";
      nvidiaBusId = "PCI:1:0:0";
    };
  };
}
