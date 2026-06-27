return {
  {
    "AlexvZyl/nordic.nvim",
    priority = 1000,
    config = function()
      require("nordic").load()
    end,
  },

  -- {
  --   "LazyVim/LazyVim",
  --   opts = {
  --     colorscheme = "nordic",
  --   },
  -- },

  { -- status bar
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      options = { theme = "nordic" },
      sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch", "diff", "diagnostics" },
        lualine_c = { "filename" },
        lualine_x = { "encoding", "fileformat", "filetype", "lsp_status" },
        lualine_y = { "progress" },
        lualine_z = { "location" },
      },
    },
  },

  { -- git changes marks
    "lewis6991/gitsigns.nvim",
    event = "VeryLazy",
  },
  {
    "folke/trouble.nvim",
    -- opts will be merged with the parent spec
    opts = { use_diagnostic_signs = true },
  },

  { -- oil git signs
    "malewicz1337/oil-git.nvim",
    event = "VeryLazy",
  },

  { -- oil lsp diagnostic
    "JezerM/oil-lsp-diagnostics.nvim",
    dependencies = { "stevearc/oil.nvim" },
    opts = {},

    -- See :h oil-lsp-diagnostics
  },

  { -- pretty tabpages
    "akinsho/bufferline.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      local bufferline = require("bufferline")
      bufferline.setup({
        options = {
          mode = "tabs",
					themable = true, -- allows highlight groups to be overriden i.e. sets highlights as default
          style_preset = bufferline.style_preset.default,
					buffer_close_icon = '',
					close_icon = ' ',

					name_formatter = function(buf)
						return buf.name .. " (" .. #buf.buffers .. ")"
					end,
          offsets = {
            {
              filetype = "oil",
              text = "oil.nvim",
              separator = true
            },
          },

          show_close_icon = false,
					always_show_bufferline = false,
        },
      })
    end,
  },
}
