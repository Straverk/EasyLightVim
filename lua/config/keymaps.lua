-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keyset = vim.keymap.set
-- local keydel = vim.keymap.del

local which_key = require("which-key")


-- diagnostic

which_key.add({ { "<leader>d", group = "diagnostic" } })

keyset("n", "<leader>dd", vim.diagnostic.open_float, { desc = "show" })


-- file

which_key.add({ { "<leader>f", group = "file" } })

local conform = require("conform")
keyset("n", "<leader>ff", conform.format, { desc = "format (conform)" })

keyset("v", "<leader>ff", function()
  require("conform").format()
end, { desc = "format (conform)" })

-- keydel("n", "gd")
-- keyset("n", "gd", function()
-- 	require('omnisharp_extended').lsp_definition()
-- end, {desc = "goto defenition (omnisharp)"})
--
