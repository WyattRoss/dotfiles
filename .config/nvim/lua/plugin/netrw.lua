return {
    "prichrd/netrw.nvim",
    dependencies = {"nvim-tree/nvim-web-devicons"},
    config = function()
        require'netrw'.setup{
            use_devicons = true,
            mappings = {
                ['yp']  = function(payload) vim.fn.setreg('"', payload.dir) end,
            },
        }
    end
}
