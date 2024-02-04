return {
    "folke/zen-mode.nvim",
    event = "VeryLazy",
    config = function()
        vim.keymap.set('n', '<leader>z', vim.cmd.Zen)
        require("zen-mode").setup()
    end
}
