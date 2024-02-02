return {
    "folke/zen-mode.nvim",
    event = "VeryLazy",
    config = function()
        require("zen-mode").setup()
    end
}
