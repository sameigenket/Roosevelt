{
  programs.fuzzel = {
    enable = true;
    settings = {
      main = {
        font = "IBM Plex Sans:size=18";
        dpit-aware = "yes";
        layer = "overlay";
        icons-enabled = "no";
        keyboard-focus = "on-demand";
        terminal = "ghostty -e {cmd}";
        auto-select = "yes";
        width = 64;
      };
      border = {
        width = 0;
        radius = 0;
      };
      colors = {
        background = "000000d9";
        text = "eaeaeaff";
        message = "969896ff";
        border = "FFFFFFFF";
      };
    };
  };
}
