require('neorg').setup(
    {
        load = {
            ["core.defaults"] = {}, -- Loads default behaviour
            ["core.norg.concealer"] = {
                config = {
                    icon_preset = "basic"
                },
            }, -- Adds pretty icons to your documents
            ["core.norg.dirman"] = { -- Manages Neorg workspaces
                config = {
                    workspaces = {
                        work = os.getenv("HOME") .. "/notes/work",
                        home = os.getenv("HOME") .. "/notes/home"
                    },
                    default_workspace = "work"
                },
            },
        },
    }
)
