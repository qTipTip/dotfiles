require 'nvim-treesitter.configs'.setup {
    ensure_installed = { "c", "lua", "vim", "help", "python", "go", "fish" },

    sync_install = false,
    auto_install = true,

    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },

    incremental_selection = {
        enable = true,
    },

    textobjects = {
        enable = true,
    }
}
