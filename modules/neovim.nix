{
  lib,
  pkgs,
  config,
  ...
}: {
  programs.nvf = {
    enable = true;
    settings = {
      vim.viAlias = true;
      vim.vimAlias = true;
      vim.lsp = {
        enable = true;
        formatOnSave = true;
        lightbulb = {
          enable = true;
          autocmd.enable = true;
        };
        lspSignature = {
          enable = true;
        };
        lspkind.enable = false;
        lspsaga.enable = false;
        harper-ls.enable = true;
        inlayHints.enable = true;
        nvim-docs-view.enable = true;
        otter-nvim.enable = true;
        servers = {
          "svls" = {
            # root_markers = [".git"];
            cmd = ["svls"];
            filetypes = [
              "systemverilog"
              #"verilog"
            ];
          };
        };
      };
      vim.spellcheck = {
        enable = true;
      };
      vim.debugger = {
        nvim-dap = {
          enable = true;
          ui.enable = true;
        };
      };
      vim.git = {
        enable = true;
        gitsigns = {
          enable = true;
        };
      };
      vim.telescope = {
        enable = true;
      };

      vim.treesitter = {
        enable = true;
        context.enable = true;
      };

      vim.languages = {
        enableFormat = true;
        markdown.enable = true;
        enableTreesitter = true;

        rust = {
          enable = true;
          lsp.enable = true;
          dap.enable = true;
        };

        python = {
          enable = true;
          lsp.enable = true;
          dap.enable = true;
        };

        clang = {
          enable = true;
          lsp.enable = true;
          dap.enable = true;
        };

        nix = {
          enable = true;
          lsp.enable = true;
        };
        scala = {
          enable = true;
          dap.enable = true;
        };
        assembly = {
          enable = true;
          lsp.enable = true;
        };
        lua.enable = true;
        typst = {
          enable = true;
          lsp.enable = true;
        };
        json.enable = true;
        haskell = {
          enable = true;
          lsp.enable = true;
        };
        astro.enable = true;
        bash = {
          enable = true;
          lsp.enable = true;
        };
        make.enable = true;
      };

      vim.autocomplete = {
        nvim-cmp.enable = true;
      };

      vim.snippets.luasnip.enable = true;
      vim.autopairs.nvim-autopairs.enable = true;

      vim.ui = {
        borders.enable = false;
        colorizer.enable = true;
        illuminate.enable = true;
      };

      vim.utility = {
        yazi-nvim.enable = true;
        diffview-nvim.enable = true;
      };

      vim.diagnostics = {
        nvim-lint = {
          enable = true;
          lint_after_save = true;
        };
      };

      vim.statusline.lualine = {
        enable = true;
        sectionSeparator = {
          left = "|";
          right = "|";
        };
      };

      vim.dashboard.alpha = {
        enable = true;
        theme = "dashboard";
      };
      vim.theme = {
        enable = true;
        name = "base16";
        base16-colors = {
          base00 = "#000000";
          base01 = "#2a2a2a";
          base02 = "#424242";
          base03 = "#969896";
          base04 = "#b4b7b4";
          base05 = "#eaeaea";
          base06 = "#e0e0e0";
          base07 = "#ffffff";
          base08 = "#d54e53";
          base09 = "#e78c45";
          base0A = "#e7c547";
          base0B = "#b9ca4a";
          base0C = "#70c0b1";
          base0D = "#7aa6da";
          base0E = "#c397d8";
          base0F = "#a3685a";
        };
      };
    };
  };
}
