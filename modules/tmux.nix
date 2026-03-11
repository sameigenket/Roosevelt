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
    baseIndex = 1;
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
      tmux-sessionx
      cpu
      pass
    ];
  };
}
