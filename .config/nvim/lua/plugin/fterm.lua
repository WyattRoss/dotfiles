return {
    "numToStr/FTerm.nvim",
    event = "VeryLazy",
    config = function()
        local fterm = require("FTerm")
        vim.keymap.set('n', '<A-t>', fterm.toggle)
        vim.keymap.set('t', '<A-t>', fterm.toggle)
    end
}
