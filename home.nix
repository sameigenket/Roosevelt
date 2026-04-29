{
  config,
  pkgs,
  inputs,
  ...
}: {
  home.username = "sam";
  home.homeDirectory = "/home/sam";
  home.stateVersion = "25.11";
  imports = [
    ./modules/ghostty.nix
    ./modules/alacritty.nix
    ./modules/zed.nix
    ./modules/shell.nix
    ./modules/waybar.nix
    ./modules/tmux.nix
    ./modules/rofi.nix
    ./modules/anki.nix
    ./modules/chromium.nix
    ./modules/river.nix
    ./modules/fuzzel.nix
    ./modules/mango.nix
    #    ./modules/helium.nix
  ];
  programs.git = {
    enable = true;
    lfs.enable = true;
    settings = {
      user = {
        email = "supersaru@protonmail.com";
        name = "Sam";
      };
      core.editor = "nvim";
    };
  };
  programs.hyprlock = {
    enable = true;
    settings = {
      general.hide_cursor = true;
      animations.enabled = false;
      background = {
        path = "~/.config/nix/space.jpg";
        blur_passes = 1;
        blur_size = 4;
      };
    };
  };
  programs.starship = {
    enable = true;
    enableFishIntegration = true;
    enableBashIntegration = true;
  };
  services.swww = {
    enable = true;
    extraArgs = [
      "img ~/.config/nix/space.jpg"
      "--layer"
      "bottom"
    ];
  };
  services.flameshot = {
    enable = true;
    settings = {
      General = {
        startupLaunch = true;
        copyPathAfterSave = true;
      };
    };
  };
  services.gammastep = {
    enable = true;
    tray = true;
    temperature.night = 2000;
    dawnTime = "6:00-6:30";
    duskTime = "18:00-18:30";
  };

  programs.distrobox = {
    enable = true;
    containers = {
      vivado = {
        additional_packages = "git nix python3 fastfetch devenv libtinfo5 libncurses5 nala tcl";
        image = "ubuntu:latest";
        entry = true;
      };
    };
  };
  services.trayscale = {
    enable = true;
    hideWindow = true;
  };
}
