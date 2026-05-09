{
  config,
  pkgs,
  ...
}: {
  programs.anki = {
    enable = true;
    minimalistMode = true;
    reduceMotion = true;
    theme = "dark";
    addons = with pkgs.ankiAddons; [
      anki-connect
      passfail2
      review-heatmap
    ];
  };
}
