vim.g.mapleader = " "
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
vim.api.nvim_set_keymap('v', '<leader>y', '"+y', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>cc', vim.cmd.cclose)
vim.keymap.set('n', '<leader>z', vim.cmd.Zen)
vim.keymap.set('n', '<A-t>', '<CMD>lua require("FTerm").toggle()<CR>')
vim.keymap.set('t', '<A-t>', '<CMD>lua require("FTerm").toggle()<CR>')
