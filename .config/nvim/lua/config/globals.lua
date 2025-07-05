Border = { "▄", "▄", "▄", "█", "▀", "▀", "▀", "█" }

WriterFiletypes = { "markdown", "norg", "txt", "latex" }
WriterMode = function (buf)
    local ft = vim.api.nvim_buf_get_option(buf, "filetype")
    for filetype in WriterFiletypes do
        if filetype == ft then
            return true
        end
    end
    return false
end
