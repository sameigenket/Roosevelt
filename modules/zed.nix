{
  config,
  pkgs,
  ...
}: {
  programs.zed-editor = {
    enable = true;
    installRemoteServer = true;
    extraPackages = with pkgs; [
      nixd
      ruff
      nil
      libclang
      haskell-language-server
      zls
    ];
    userSettings = {
      telemetry = {
        metrics = false;
      };
      hour_format = "hour24";
      vim_mode = true;
      disable_ai = true;
      buffer_font_size = 18;
      buffer_font_family = "Lilex Nerd Font Mono";
      ui_font_family = "IBM Plex Sans";
      ui_font_size = 16;
    };
    extensions = [
      "nix"
      "verilog"
      "astro"
      "probe-rs"
      "compline"
      "make"
      "toml"
      "basher"
      "neocmake"
      "tcl"
      "pylsp"
      "csharp"
      "assembly"
      "haskell"
      "typst"
      "vhdl"
      "opencode"
      "colored-zed-icons-theme"
      "justfile"
      "ocaml"
    ];
    themes = {
      mode = "dark";
      dark = "Compline";
    };
  };
}
