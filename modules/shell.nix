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
    '';
    plugins = [
      {
        name = "z";
        src = pkgs.fishPlugins.z;
      }
      {
        name = "forgit";
        src = pkgs.fishPlugins.forgit;
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
  programs.zsh.enable = true;
}
