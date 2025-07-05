return {
    "nvim-neorg/neorg",
    lazy = false,
    dependencies = { { "nvim-lua/plenary.nvim" }, { "nvim-neorg/neorg-telescope" } },
    keys = {
        { "<leader>nw", "<Plug>(neorg.telescope.switch_workspace)" },
        { "<leader>nrg", ":Neorg workspace notes <CR>" },
        { "<leader>nh", "<Plug>(neorg.telescope.search_headings)" },
        { "<leader>nl", "<Plug>(neorg.telescope.find_linkable)" },
        { "<leader>nf", "<Plug>(neorg.telescope.find_norg_files)" },
        { "<leader>nr", ":Neorg return <CR>" },
    },
    config = function()
        require("neorg").setup {
            load = {
                ["core.defaults"] = {},
                ["core.concealer"] = {},
                ["core.export"] = {},
                ["core.dirman"] = {
                    config = {
                        workspaces = {
                            notes = "~/notes",
                        },
                    },
                },
                ["core.integrations.telescope"] = {},
            },
        }
        vim.wo.foldlevel = 99
        vim.wo.conceallevel = 2
    end,
}
