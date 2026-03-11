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
      theme = "Tomorrow Night Bright";
      font-size = 18;
      font-family = "Lilex Nerd Font Mono";
    };
  };
}
