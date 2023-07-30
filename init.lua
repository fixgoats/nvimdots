vim.g.mapleader = " "
vim.opt.guicursor = ""
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.relativenumber = true
vim.opt.nu = true
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.termguicolors = true
vim.opt.scrolloff = 8
vim.opt.updatetime = 50
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")
vim.opt.colorcolumn = "80"

require("remap")
require("plugins")

require("everforest").load()
