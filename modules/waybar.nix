{
  programs.waybar = {
    enable = true;
    systemd.enable = true;
    #    style = ./waybar.css;
    settings.main = {
      layer = "top";
      position = "bottom";
      height = 24;
      output = [
        "DP-5"
      ];
      modules-left = [
        "ext/workspaces"
      ];
      modules-center = [
        "dwl/window"
      ];
      modules-right = [
        "tray"
        "cpu"
        "memory"
        "group/audio"
        "clock"
        "custom/power"
      ];
      "ext/workspaces" = {
        format = "{icon}";
        ignore-hidden = false;
        on-click = "activate";
        sort-by-number = true;
      };
      "cpu" = {
        interval = 1;
        format = "{usage}%";
      };
      "memory" = {
        format = "{percentage}%";
      };
      "tray" = {
        icon-size = 16;
        spacing = 8;
      };
      "dwl/window" = {
        format = "{title}";
        on-click = "";
        tooltip = false;
      };
      "clock" = {
        format = "{:%H:%M:%S}";
        interval = 1;
        tooltip-format = "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>";
      };
      "group/audio" = {
        orientation = "horizontal";
        modules = [
          "pulseaudio"
        ];
      };
      "custom/power" = {
        format = "󰐥";
        on-click = "ghostty --app-id=poweroff-confirm --window-size-chars=36x5 bash -c 'echo; echo \"  Shut down the system?\"; echo; read -p \"  [y/N] \" a; [ \"$a\" = y ] && systemctl poweroff'";
      };
    };
  };
}
