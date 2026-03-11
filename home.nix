{
  config,
  pkgs,
  ...
}: {
  home.username = "sam";
  home.homeDirectory = "/home/sam";
  home.stateVersion = "25.11";
  imports = [
    ./modules/ghostty.nix
    ./modules/zed.nix
  ];

  programs.bash = {
    enable = true;
    initExtra = "
        fastfetch
      ";
    shellAliases = {
      firmware-menu = "sudo systemctl reboot --firmware-setup";
    };
  };

  programs.direnv = {
    enable = true;
    enableBashIntegration = true;
    nix-direnv.enable = true;
  };

  programs.tmux = {
    enable = true;
    clock24 = true;
    terminal = "tmux-256color";
    keyMode = "vi";
    plugins = with pkgs.tmuxPlugins; [
      dotbar
      harpoon
      tmux-fzf
      sysstat
      yank
      tilish
      weather
      fuzzback
      tmux-fzf
    ];
  };
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
        path = "./nebula.jpg";
        blur_passes = 1;
        blur_size = 4;
      };
    };
  };
  programs.starship = {
    enable = true;
  };

  programs.waybar = {
    enable = true;
    systemd.enable = true;
    style = "./waybar.css";
  };
  services.swww = {
    enable = true;
    extraArgs = [
      "img ./nebula.jpg"
    ];
  };
  programs.anki = {
    enable = true;
    minimalistMode = true;
    reduceMotion = true;
    theme = "dark";
    sync = {
      syncMedia = true;
      username = "twiddling_parcel406@simplelogin.com";
    };
    addons = with pkgs.ankiAddons; [
      anki-connect
      passfail2
      review-heatmap
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
    temperature.night = 2000;
    dawnTime = "6:00-6:30";
    duskTime = "18:00-18:30";
  };

  programs.rofi = {
    enable = true;
    cycle = true;
    plugins = with pkgs; [
      rofi-calc
      rofi-obsidian
      rofi-bluetooth
    ];
  };

  programs.obsidian = {
    enable = true;
    defaultSettings = {
      appearance = {
        theme = "Flexoki";
        textFontFamily = "IBM Plex Sans JP";
      };
    };
  };

  services.playerctld = {
    enable = true;
  };
}
