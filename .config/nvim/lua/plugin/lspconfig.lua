return {
    {
        "williamboman/mason.nvim",
        lazy = false,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        lazy = false,
    },
    {
        'mrcjkb/rustaceanvim',
        lazy=false,
        version = '^4', -- Recommended
        ft = { 'rust' },
    },
    {
        "neovim/nvim-lspconfig",
        event = "VeryLazy",
        config = function()
            require("mason").setup()
            require("mason-lspconfig").setup()
            require("mason-lspconfig").setup_handlers {

                function (server_name) -- default handler (optional)
                    require("lspconfig")[server_name].setup {}
                end
            }

            vim.keymap.set("n", "gd", vim.lsp.buf.definition)
            vim.keymap.set("n", "gr", vim.lsp.buf.references)
            vim.keymap.set("n", "K", vim.lsp.buf.hover)
            vim.keymap.set("n", "<leader>vws", vim.lsp.buf.workspace_symbol)
            vim.keymap.set("n", "<leader>vd", vim.diagnostic.open_float)
            vim.keymap.set("n", "[d", vim.diagnostic.goto_next)
            vim.keymap.set("n", "]d", vim.diagnostic.goto_prev)
            vim.keymap.set("n", "<leader>vca", vim.lsp.buf.code_action)
            vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename)
            vim.keymap.set("i", "<C-h>", vim.lsp.buf.signature_help)
            vim.keymap.set('n', '<leader>cc', vim.cmd.cclose)
        end,
    },
}
