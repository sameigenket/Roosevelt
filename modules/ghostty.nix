{
  config,
  pkgs,
  ...
}: {
  programs.ghostty = {
    enable = true;
    installVimSyntax = true;
    enableFishIntegration = true;
    enableBashIntegration = true;
    settings = {
      background-opacity = 0.9;
      background-blur = true;
      cursor-style-blink = true;
      initial-command = "tmux";
      theme = "Tomorrow Night Bright";
      font-size = 17;
      font-family = "Lilex Nerd Font Mono";
    };
  };
}
