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
          enable = false;
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
          lsp.enable = true;
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
        blink-cmp.enable = true;
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
          left = "";
          right = "";
        };
        componentSeparator = {
          left = "";
          right = "";
        };
      };

      vim.dashboard.alpha = {
        enable = true;
        theme = "dashboard";
      };
      vim.theme = {
        enable = true;
      };
    };
  };
}
