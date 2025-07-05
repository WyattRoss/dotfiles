return {
    "kylechui/nvim-surround",
    event = "VeryLazy",

    config = function()
        local surround = require("nvim-surround")
        surround.setup({})
    end
}
