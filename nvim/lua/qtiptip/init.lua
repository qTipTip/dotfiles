-- Disable netrw to avoid race conditions at startup
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require('qtiptip.set')
require('qtiptip.keybindings')
require('qtiptip.plugin_management')
require('qtiptip.colorscheme')
require('qtiptip.autocmds')
