vim.g.mapleader = " "

vim.g.vim_json_conceal = false

-- gutter
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.numberwidth = 3
vim.opt.signcolumn = "yes"

-- tabs
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- colorcolumn
vim.opt.colorcolumn = "120"

-- colors
vim.opt.termguicolors = true
vim.opt.cursorline = true

-- scrolloff
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 4

-- search
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.infercase = true

-- undo
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
