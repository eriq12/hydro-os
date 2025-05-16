return {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
        style = "night",
        on_highlights = function(h1)
            h1.LineNrAbove = {
                fg = "#6ab8ff",
            }
            h1.LineNrBelow = {
                fg = "#ff6188"
            }
        end,
        on_colors = function() end,
    },
}