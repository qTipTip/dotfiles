function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

vim.g.mapleader = " "
map("i", "jk", "<esc>l", { silent = true })
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
