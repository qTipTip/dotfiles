-- Disable netrw to avoid race conditions at startup
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require('user.settings')
require('user.keybindings')
require('user.plugins')
require('user.colors')
require('user.autocmds')
