{ pkgs, ... }:

{
  # Virtualização (QEMU/KVM + virt-manager)
  virtualisation.libvirtd = {
    enable = true;
    qemu.swtpm.enable = true; # TPM virtual (necessário para Windows 11)
  };

  programs.virt-manager.enable = true;

  # Rede NAT padrão das VMs
  networking.firewall.trustedInterfaces = [ "virbr0" ];

  # Wireshark (captura de pacotes sem root)
  programs.wireshark = {
    enable = true;
    package = pkgs.wireshark; # versão com interface gráfica
  };

  # Grupos necessários (a lista é mesclada com a do users.nix)
  users.users.dr.extraGroups = [ "libvirtd" "wireshark" ];
}
