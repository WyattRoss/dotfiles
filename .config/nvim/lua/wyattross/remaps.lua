vim.g.mapleader = " "
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
vim.api.nvim_set_keymap('v', '<leader>y', '"+y', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>cc', vim.cmd.cclose)
vim.g.floaterm_keymap_toggle = '<C-t>'
vim.keymap.set('n', '<leader>z', vim.cmd.Zen)
