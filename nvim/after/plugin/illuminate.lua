require('illuminate').configure({
    providers = {
        "lsp",
        "treesitter",
        "regex",
    },
    under_cursor = "true",
    min_count_to_highlight = 1,
    filetypes_denylist = {
        'fugitive',
        'NvimTree'
    }
})

vim.cmd [[
    augroup illuminate_augroup
        autocmd!
        autocmd VimEnter * hi link illuminatedWord CursorLine
    augroup END

    augroup illuminate_augroup
        autocmd!
        autocmd VimEnter * hi illuminatedWord cterm=underline gui=underline
    augroup END

    augroup illuminate_augroup
        autocmd!
        autocmd VimEnter * hi illuminatedCurWord cterm=italic gui=italic
    augroup END
]]
