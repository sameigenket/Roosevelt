{
  programs.waybar = {
    enable = true;
    systemd.enable = true;
    style = ./waybar.css;
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
        "group/audio"
        "clock"
      ];
      "ext/workspaces" = {
        format = "{icon}";
        ignore-hidden = false;
        on-click = "activate";
        sort-by-number = true;
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
        format = "{:%H:%M}";
      };
      "group/audio" = {
        orientation = "horizontal";
        modules = [
          "pulseaudio"
        ];
      };
    };
  };
}
