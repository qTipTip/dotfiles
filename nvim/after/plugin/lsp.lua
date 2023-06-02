require('neodev').setup({})
local lsp = require('lsp-zero')

lsp.preset('recommended')
lsp.ensure_installed({ 'pylsp'})


lsp.configure('pylsp',
    {
        settings = {
            pylsp = {
                plugins = {
                    pyls_black = { enabled = true },
                    isort = { enabled = true, profile = "black" },
                    rope_autoimport = { enabled = true }
                },
            },
        },
    }
)

lsp.on_attach(function(client, buffer_number)
    local opts = { buffer = buffer_number, remap = false }

    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "gi", function() vim.lsp.buf.implementation() end, opts)
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set("n", "<leader>s", function() vim.lsp.buf.workspace_symbol() end, opts)
    vim.keymap.set("n", "<leader>vd", function()
        vim.diagnostic.open_float({
            { scope = "buffer" }
        })
    end, opts)
    vim.keymap.set("n", "<leader>dn", function() vim.diagnostic.goto_next() end, opts)
    vim.keymap.set("n", "<leader>dp", function() vim.diagnostic.goto_prev() end, opts)
    vim.keymap.set("n", "<leader>dl", "<cmd>Telescope diagnostics<cr>", opts)
    vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set("n", "<leader>rf", function() vim.lsp.buf.references() end, opts)
    vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, opts)
    vim.keymap.set("i", "<c-p>", function() vim.lsp.buf.signature_help() end, opts)
end)

lsp.setup()
