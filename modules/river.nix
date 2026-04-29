{
  wayland.windowManager.river = {
    enable = true;
    settings = {
      border-width = 2;
      declare-mode = [
        "normal"
      ];
      map = {
        normal = {
          "Super Q" = "close";
          "Super Space" = "spawn fuzzel";
          "Super T" = "spawn $TERMINAL -e";

          "Super H" = "focus-view left";
          "Super J" = "focus-view down";
          "Super K" = "focus-view up";
          "Super L" = "focus-view right";

          "Super+Shift H" = "move left";
          "Super+Shift J" = "move down";
          "Super+Shift K" = "move up";
          "Super+Shift L" = "move right";

          "Super+Alt H" = "resize horizontal 8";
          "Super+Alt L" = "resize horizontal -8";
          "Super+Alt K" = "resize vertical 8";
          "Super+Alt J" = "resize vertical -8";
        };
      };
      spawn = [
        "waybar"
        "fuzzel"
      ];
    };
    extraConfig = ''
      rivertile -view-padding 2 -outer-padding 0 &amp;
    '';
  };
}
