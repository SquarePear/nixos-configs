# Do not modify this file!  It was generated by ‘nixos-generate-config’
# and may be overwritten by future invocations.  Please make changes
# to /etc/nixos/configuration.nix instead.
{ config, lib, pkgs, modulesPath, ... }:

{
  imports =
    [
      (modulesPath + "/installer/scan/not-detected.nix")
    ];

  boot.initrd.availableKernelModules = [ "ahci" "ohci_pci" "ehci_pci" "usb_storage" "usbhid" "sd_mod" "sr_mod" ];
  boot.initrd.kernelModules = [ ];
  boot.kernelModules = [ "kvm-amd" ];
  boot.extraModulePackages = [ ];

  fileSystems."/" =
    {
      device = "/dev/sda3";
      fsType = "btrfs";
      options = [ "subvol=@" ];
    };

  fileSystems."/home" =
    {
      device = "/dev/sda3";
      fsType = "btrfs";
      options = [ "subvol=@home" ];
    };

  fileSystems."/backup" =
    {
      device = "/dev/sda3";
      fsType = "btrfs";
      options = [ "subvol=@backup" ];
    };

  fileSystems."/boot" =
    {
      device = "/dev/disk/by-uuid/EAD9-B040";
      fsType = "vfat";
    };

  swapDevices =
    [{ device = "/dev/disk/by-uuid/474ab1a1-b4d7-4d6c-8467-d356276a7d65"; }];

  hardware.cpu.amd.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
}
