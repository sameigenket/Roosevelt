{
  programs.alacritty = {
    enable = true;
    theme = "tomorrow_night_bright";
    settings = {
      window = {
        blur = true;
        opacity = 0.95;
      };
      font = {
        normal = {
          family = "Lilex Nerd Font Mono";
          style = "Regular";
        };
        size = 17;
      };
    };
  };
}
