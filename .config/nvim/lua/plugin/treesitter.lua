return {
    'nvim-treesitter/nvim-treesitter',
    config = function ()
        local treesitter = require("nvim-treesitter.configs")
        treesitter.setup({
            auto_install =  true,
            highlight = { enable = true },
        })
    end
}
