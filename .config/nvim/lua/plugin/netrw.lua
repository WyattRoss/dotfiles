return {
    "prichrd/netrw.nvim",
    dependencies = {"nvim-tree/nvim-web-devicons"},
    config = function()
        return {
            require'netrw'.setup{
                use_devicons = true
            }
        }
    end,
}
