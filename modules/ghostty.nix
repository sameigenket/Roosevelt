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
      background-opacity = 0.995;
      background-blur = true;
      cursor-style-blink = true;
      initial-command = "tmux";
      theme = "Tomorrow Night Bright";
      font-size = 18;
      font-family = "Lilex Nerd Font Mono";
    };
  };
}
