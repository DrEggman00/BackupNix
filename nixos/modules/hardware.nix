# Ajustes gerais de hardware e armazenamento
{ ... }:

{
  hardware.cpu.intel.updateMicrocode = true;

  zramSwap.enable = true;

  services.fstrim.enable = true;
  services.btrfs.autoScrub.enable = true;
}
