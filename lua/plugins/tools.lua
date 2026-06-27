return {
  {
    "saghen/blink.cmp",
    dependencies = { "saghen/blink.lib", "rafamadriz/friendly-snippets", "xzbdmw/colorful-menu.nvim" },

    opts = {
      keymap = {
        -- set to 'none' to disable the 'default' preset
        preset = "default",
      },
      sources = { default = { "lsp", "path", "snippets", "buffer", "omni" } },

      signature = { enabled = true },

      fuzzy = { implementation = "prefer_rust_with_warning" },

      completion = {
        menu = {
          draw = {
            columns = { { "kind_icon" }, { "label", gap = 1 } },
            components = {
              label = {
                text = function(ctx)
                  return require("colorful-menu").blink_components_text(ctx)
                end,
                highlight = function(ctx)
                  return require("colorful-menu").blink_components_highlight(ctx)
                end,
              },
            },
          },
        },
        list = {
          selection = { preselect = true, auto_insert = false },
        },
        trigger = {
          show_on_trigger_character = true,
          show_on_blocked_trigger_characters = { " ", "\n", "\t" },
        },

      },

			cmdline = {
				completion = {
					list = {
						selection = { preselect = true, auto_insert = false }
					},
				},
			},
    },

    build = function()
      require("blink.cmp").build():pwait()
    end,
  },
  {
    "stevearc/oil.nvim",
    lazy = false,

    dependencies = { { "nvim-mini/mini.icons", opts = {} } },

    opts = {

      default_file_explorer = true,
      delete_to_trash = true,
    },
  },

  {
    "neovim/nvim-lspconfig",
  },

  {
    "stevearc/conform.nvim",
    opts = {},
  },

  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    keys = {
      {
        "<leader>?",
        function()
          require("which-key").show({ global = false })
        end,
        desc = "Buffer Local Keymaps (which-key)",
      },
    },
  },

  { -- Syntax highlighting
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "c",
        "cpp",

        "c_sharp",

        "python",
        "lua",
        "go",

        "bash",
        "zsh",

        "markdown",
        "markdown_inline",
        "html",
        "latex",
        "typst",
        "yaml",
        "kdl",
      },
    },

    build = ":TSUpdate",
  },

  { -- Markdown and etc. previewer
    "OXY2DEV/markview.nvim",
    opts = {
      latex = {
        enable = true,
      },
    },
    dependencies = "nvim-treesitter/nvim-treesitter",
  },

  { -- c# cool extender
    "Hoffs/omnisharp-extended-lsp.nvim",
    ft = "cs",
  },
}
