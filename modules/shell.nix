{
  config,
  pkgs,
  ...
}: {
  programs.bash = {
    enable = true;
    shellAliases = {
      firmware-menu = "sudo systemctl reboot --firmware-setup";
    };
  };
  programs.fish = {
    enable = true;
    shellAliases = {
      firmware-menu = "sudo systemctl reboot --firmware-setup";
    };
    interactiveShellInit = ''
      set fish_greeting
      fastfetch
    '';
    plugins = [
      {
        name = "z";
        src = pkgs.fishPlugins.z;
      }
    ];
  };

  programs.zoxide = {
    enable = true;
    enableFishIntegration = true;
    enableBashIntegration = true;
  };

  programs.direnv = {
    enable = true;
    enableBashIntegration = true;
    enableFishIntegration = true;
    nix-direnv.enable = true;
  };
}
