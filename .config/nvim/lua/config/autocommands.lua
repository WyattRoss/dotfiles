vim.api.nvim_create_autocmd("FileType", {
    pattern = WriterFiletypes,
    callback = function()
        -- sets for markdown and other mostly not-code files
        -- wrapping
        vim.opt_local.linebreak = true
        vim.opt_local.wrap = true
        vim.opt_local.breakindent = true
        vim.opt_local.showbreak = ""

        -- gutters
        vim.opt_local.numberwidth = 2

        -- no color column
        vim.opt_local.colorcolumn = ""

        -- true up/down
        vim.keymap.set("n", "k", "gk")
        vim.keymap.set("n", "j", "gj")
    end

})

-- Disable cursorline when leaving a window
vim.api.nvim_create_autocmd("WinLeave", {
  callback = function()
    vim.wo.cursorline = false
  end,
})

-- Enable cursorline when entering a window
vim.api.nvim_create_autocmd("WinEnter", {
  callback = function()
    vim.wo.cursorline = true
  end,
})

