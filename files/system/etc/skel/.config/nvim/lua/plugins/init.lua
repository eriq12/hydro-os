return {
	{
		"LazyVim/LazyVim",
		import = "lazyvim.plugins",
		opts = {
			colorscheme = function()
				local tokyonight = require("tokyonight")
				tokyonight.setup({
					style = "night",
					on_highlights = function(hl)
						hl.LineNrAbove = {
							fg = "#6ab8ff",
						}
						hl.LineNrBelow = {
							fg = "#ff6188",
						}
					end,
					on_colors = function() end,
				})
				tokyonight.load()
			end,
		},
	},
}
