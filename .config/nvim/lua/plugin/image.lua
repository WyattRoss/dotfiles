return {
    "3rd/image.nvim",
    ft = { "markdown", "norg" },
    config = function()
        local image = require("image")
        image.setup({
            backend = "kitty",
            integrations = {
                markdown = {
                    enabled = true,
                    clear_in_insert_mode = false,
                    download_remote_images = false,
                    only_render_image_at_cursor = false,
                    filetypes = { "markdown", "quarto" },
                },
                neorg = {
                    enabled = true,
                    clear_in_insert_mode = false,
                    download_remote_images = false,
                    only_render_image_at_cursor = false,
                    filetypes = { "norg" },
                },
                max_width = 100,
                max_height = 12,
                max_height_window_percentage = math.huge,
                max_width_window_percentage = math.huge,
                window_overlap_clear_enabled = true,
                window_overlap_clear_ft_ignore = { "cmp_menu", "cmp_docs", "" },
            },
        })
    end
}
