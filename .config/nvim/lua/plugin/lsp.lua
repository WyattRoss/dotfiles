local manual_setup = {}
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
        "mrcjkb/rustaceanvim",
        version = "^4",
        lazy = false,
    },
    {
        "neovim/nvim-lspconfig",
        lazy = false,
        keys = {
            { "gd", vim.lsp.buf.definition, desc = "go to definition" },
            { "gr", vim.lsp.buf.references, desc = "get references" },
            { "K", vim.lsp.buf.hover, desc = "hover" },
            { "<leader>vws", vim.lsp.buf.workspace_symbol, desc = "get workspace symbol" },
            { "<leader>vd", vim.diagnostic.open_float, desc = "open current diagnostic" },
            { "[d", vim.diagnostic.goto_next, desc = "go to next diagnostic" },
            { "]d", vim.diagnostic.goto_prev, desc = "go to previous diagnostic" },
            { "<leader>vca", vim.lsp.buf.code_action, desc = "code action" },
            { "<leader>rn", vim.lsp.buf.rename, desc = "rename symbol" },
            { "<leader>cc", vim.cmd.cclose, desc = "close info popup"},
            { "<C-h>", vim.lsp.buf.signature_help, desc = "signature help", mode = "i"},
        },

        config = function()
            require("mason").setup()
            require("mason-lspconfig").setup({
                automatic_enable = {
                    exclude = manual_setup
                }
            })
        end

    }
}
