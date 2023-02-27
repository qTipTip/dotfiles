vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8

vim.opt.colorcolumn = "80"
vim.opt.signcolumn = "yes"
vim.opt.guicursor = ""
vim.opt.cursorline = true

vim.opt.list = true
vim.opt.listchars = "tab:» ,trail:·,nbsp:+"
vim.opt.termguicolors = true

vim.opt.pumheight = 5
vim.opt.pumblend = 5

vim.opt.autochdir = true
