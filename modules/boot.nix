## Boot

{ config, lib, pkgs, ... }:
{
    #boot.loader.systemd-boot.enable = true;
    #boot.loader.efi.canTouchEfiVariables = true;

  boot.loader = {
	efi = {
		canTouchEfiVariables = true;
		efiSysMountPoint = "/boot/";
		};
	grub = {
		efiSupport = true;
		device = "nodev";
		};
	};
  # Use latest kernel.
  boot.kernelPackages = pkgs.linuxPackages_latest;

}