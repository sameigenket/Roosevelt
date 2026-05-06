{
  config,
  pkgs,
  ...
}: {
  virtualisation.podman = {
    enable = true;
    dockerCompat = true;
  };
  # mango, ly and waybar
  programs.mango.enable = true;
  services.displayManager.ly.enable = true;

  # Bluetooth
  hardware.bluetooth.enable = true;
  services.blueman.enable = true;
  boot.initrd.luks.devices."luks-78a4aa4f-3aa8-46df-9f3d-a1000e165776".device = "/dev/disk/by-uuid/78a4aa4f-3aa8-46df-9f3d-a1000e165776";
}
