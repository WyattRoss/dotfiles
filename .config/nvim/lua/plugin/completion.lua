return {
    {
        "hrsh7th/nvim-cmp",
        event = "VeryLazy",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-buffer",
            "L3MON4D3/LuaSnip",
        },

        config = function()
            local cmp = require("cmp")

            cmp.setup({
                mapping = {
                    ['<CR>'] = cmp.mapping.confirm({select = true}),
                    ['<C-k>'] = cmp.mapping.scroll_docs(-4),
                    ['<C-j>'] = cmp.mapping.scroll_docs(4),
                    ['<Tab>'] = cmp.mapping.select_next_item(),
                    ['<S-Tab>'] = cmp.mapping.select_prev_item(),
                },
                window = {
                    completion = cmp.config.window.bordered(),
                    documentation = cmp.config.window.bordered(),
                },
                snippet = {
                    expand = function(args)
                        require("luasnip").lsp_expand(args.body)
                    end,
                },
                sources = {
                    { name = "git" },
                    { name = "neorg" },
                    { name = "nvim_lsp" },
                    { name = "luasnip" },
                    { name = "path" },
                    { name = "buffer" },
                }
            })
        end
    },
}
