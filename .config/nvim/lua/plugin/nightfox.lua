return {
    "EdenEast/nightfox.nvim",
    lazy = false,
    config = function()
        local nightfox = require("nightfox")
        nightfox.setup({
            options = {
                dim_inactive = true,
            }
        })

        vim.cmd("colorscheme carbonfox")
    end

}
