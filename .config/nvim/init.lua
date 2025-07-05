require("config")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Easy enable/disable
require("config.globals")
local plugins = {
    { import = "plugin.completion", },
    { import = "plugin.autopairs", },
    { import = "plugin.autosave", },
    { import = "plugin.fterm", },
    { import = "plugin.surround", },
    -- { import = "plugin.image", },
    { import = "plugin.git", },
    { import = "plugin.lsp", },
    { import = "plugin.lualine", },
    { import = "plugin.nightfox", },
    { import = "plugin.treesitter", },
    { import = "plugin.neorg" },
    { import = "plugin.netrw" },
    { import = "plugin.telescope" },
    { import = "plugin.rainbowcsv" },
    { import = "plugin.tmux" },
}

require("lazy").setup(plugins, {
    install = {
        missing = true,
        colorscheme  = { "carbonfox", } -- maybe I already have it?
    },
    dev = {
        path = "~/plugindev"
    },
})

require("config")
