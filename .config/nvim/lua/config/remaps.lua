vim.g.mapleader = " "

vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

-- System yanks
vim.keymap.set("n", "<leader>yy", '"+yy', { noremap = true, silent = true })
vim.keymap.set("v", "<leader>y", '"+y', { noremap = true, silent = true })

-- System paste
vim.keymap.set("n", "<leader>p", '"+p')

-- Delete without yank
vim.keymap.set("n", "<leader>d", '"_dd')
vim.keymap.set("v", "<leader>d", '"_d')

vim.keymap.set("n", "<leader>=", 'ggVG=')
