{
  config,
  pkgs,
  ...
}: {
  programs.tmux = {
    enable = true;
    clock24 = true;
    newSession = true;
    terminal = "tmux-256color";
    keyMode = "vi";
    baseIndex = 0;
    plugins = with pkgs.tmuxPlugins; [
      dotbar
      harpoon
      tmux-fzf
      yank
      tilish
      weather
      fuzzback
    ];
  };
}
