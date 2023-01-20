local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require('keybindings')
require("lazy").setup(
{
	"shaunsingh/nord.nvim",
	"nvim-treesitter/nvim-treesitter",
	"nvim-tree/nvim-web-devicons",
	"romgrk/barbar.nvim",
	"neovim/nvim-lspconfig",
	"nvim-lua/plenary.nvim",
	{'ms-jpq/coq_nvim', branch = 'coq'},
	{'ms-jpq/coq.artifacts', branch = 'artifacts'},
	{'nvim-telescope/telescope.nvim', tag = "0.1.0", dependencies = {"nvim-lua/plenary.nvim"}},

}, 
{}
)

require('colorscheme')
require('nvim-treesitter.configs').setup{
	ensure_installed = {'vim', 'lua', 'python', 'help', 'markdown'},
	highlight = { enable = true },
	incremental_selection = { enable = true },
	textobjects = { enable = true },
}

vim.lsp.start({
	name = "pylsp",
	cmd = {"pylsp"},
	root_dir = vim.fs.dirname(vim.fs.find({'setup.py', 'pyproject.toml'}, { upward = true })[1]),
})

require'lspconfig'.pylsp.setup{}
