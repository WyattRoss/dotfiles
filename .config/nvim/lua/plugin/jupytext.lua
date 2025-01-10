return {
    "GCBallesteros/jupytext.nvim",
    config = true,
    setup = function()
        require("jupytext").setup({
            style = "markdown",
            output_extension = "md",
            force_ft = "quarto",
        })
    end
}
