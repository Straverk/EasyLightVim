-- local lspconfig = require("lspconfig")
local conform = require("conform")

local lsp_on = vim.lsp.enable

-- LSP
-- c/c++
lsp_on("clangd")

-- c#
lsp_on("csharp_ls")

-- python
lsp_on("ty")
lsp_on("lua_ls")

-- grammar
lsp_on("harper_ls")

-- conform formatters
conform.setup({
  formatters_by_ft = {
    c = { "clang-format" },
    cpp = { "clang-format" },

    cs = { "csharpier" },

    python = { "ruff_format" },
    lua = { "stylua" },
    go = { "gofmt" },

		sh = { "shfmt" },

		kdl = { "kdlfmt" },
		toml = { "taplo" },
		json = { "yq" },
		yaml = { "yq" },
		kyaml = { "yq" },
		xml = { "yq" },
		ini = { "yq" },
		properties = { "yq" },
		csv = { "yq" },
		tsv = { "yq" },
		hcl = { "yq" },

    -- ["*"] = { "typos" },
  },
})


-- vim.lsp.config = {
--       servers = {
--         fsautocomplete = {},
--         omnisharp = {
--           handlers = {
--             ["textDocument/definition"] = function(...)
--   return require("omnisharp_extended").handler(...)
--             end,
--           },
--           keys = {
--             {
--               "gd",
--               -- LazyVim.has("telescope.nvim") and function()
--               --   require("omnisharp_extended").telescope_lsp_definitions()
--               -- end or function()
--               function()
--   require("omnisharp_extended").lsp_definitions()
--               end,
--               desc = "goto definition (omnisharp-ext)",
--             },
--           },
--           enable_roslyn_analyzers = true,
--           organize_imports_on_format = true,
--           enable_import_completion = true,
--         },
--       },
-- }
