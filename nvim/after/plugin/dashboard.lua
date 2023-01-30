require('dashboard').setup({
    theme = 'hyper',
    config = {
        week_header = {
            enable = true
        },
        shortcut = {
            {
                desc = "Update Plugins", group = "@property", action = "Lazy update", key = 'u'
            },
            {
                desc = "Find Files", group = "Label", action = "Telescope find_files", key = "f"
            },
        }
    }
})
