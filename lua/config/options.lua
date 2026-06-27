-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.snacks_animate = true

vim.cmd("syntax enable")

local opt = vim.opt

-- encoding
opt.encoding = "utf-8"
opt.fileencoding = "utf-8"

-- clipboard
opt.clipboard = vim.env.SSH_CONNECTION and "" or "unnamedplus"
opt.cursorline = true

-- togle off vi compitable
opt.compatible = false

-- indent
opt.expandtab = false
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.autoindent = true
opt.smartindent = true

-- search
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true
opt.incsearch = true

-- stroke
opt.relativenumber = true
opt.number = true

-- scroll
opt.scrolloff = 15
opt.sidescrolloff = 8

-- mouse
opt.mouse = "a"
opt.ttyfast = true

-- 24 bits colors
opt.termguicolors = true
-- fast update
opt.updatetime = 300

-- System
-- changes beetween sessions
opt.undofile = true
opt.undodir = os.getenv("HOME") .. "/.local/share/nvim/undodir"

-- create folder for undodir
-- os.execute("mkdir -p " .. opt.undodir:get())
