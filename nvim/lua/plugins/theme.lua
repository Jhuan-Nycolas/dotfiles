return {
	"catpuccin/nvim",
	name = "catpuccin",
	priority = 1000,
	config = function()
		vim.cmd.colorscheme("catpuccin")
    flavour = "macchiato"
    transparent_background = true
	end,
}
