{
  config,
  pkgs,
  ...
}: {
  programs.rofi = {
    enable = true;
    cycle = true;
    plugins = with pkgs; [
      rofi-calc
      rofi-obsidian
      rofi-bluetooth
    ];
    theme = ./squared-nord.rasi;
  };
}
