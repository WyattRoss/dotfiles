return {
    "prichrd/netrw.nvim",
    init = function()
        return {
            require'netrw'.setup{
                use_devicons = true
            }
        }
    end,
}
