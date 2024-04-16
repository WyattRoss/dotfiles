vim.g.mapleader = " "

vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

-- System yanks
vim.keymap.set("n", "<leader>yy", '"+yy', { noremap = true, silent = true })
vim.keymap.set("v", "<leader>y", '"+y', { noremap = true, silent = true })

-- Delete without yank
vim.keymap.set("n", "<leader>d", '"_dd')
vim.keymap.set("v", "<leader>d", '"_d')

-- Intuitive line movement (for prose writing)
vim.keymap.set("n", "j", "gj", { noremap = true })
vim.keymap.set("n", "k", "gk", { noremap = true })

-- Prose mode
local function toggle_prose_mode()
    wrapping_mode = vim.opt.wrap:get()
    if wrapping_mode then
        vim.opt.wrap = false
        vim.opt.linebreak = false
    else
        vim.opt.wrap = true
        vim.opt.linebreak = true
    end
end

vim.keymap.set("n", "<leader>pr", toggle_prose_mode)

