{pkgs, ...}: {
  services.desktopManager.cosmic = {
    enable = true;
  };

  environment.cosmic.excludePackages = with pkgs; [
    cosmic-store
    cosmic-edit
  ];

  services.displayManager.sddm = {
    enable = true;
    wayland = {
      enable = true;
    };

    enableHidpi = true;
  };
}
