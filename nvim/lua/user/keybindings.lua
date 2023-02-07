vim.g.mapleader = " "
vim.keymap.set("i", "jk", "<esc>l", { silent = true })
vim.keymap.set("t", "jk", [[<C-\><C-n>]], { silent = true })

-- move visual selection
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- append line below to current line without moving cursor
vim.keymap.set("n", "J", "mzJ`z")

-- yank to system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>Y", "\"+Y")

-- edit nvimrc
-- edit dotfiles
vim.keymap.set("n", "<leader>erc", ":edit ~/.config/nvim/init.lua <cr>")
vim.keymap.set("n", "<leader>edf", ":edit ~/.dotfiles <cr>")

-- open urls with netrw disabled (when using nvim-tree)
if vim.fn.has("mac") == 1 then
    vim.keymap.set("n", "gx", '<Cmd>call jobstart(["open", expand("<cfile>")], {"detach": v:true})<CR>')
elseif vim.fn.has("unix") == 1 then
    vim.keymap.set("n", "gx", '<Cmd>call jobstart(["xdg-open", expand("<cfile>")], {"detach": v:true})<CR>', {})
end
