return {
	{
		"folke/tokyonight.nvim",
    lazy = false,
		name = "tokyonight",
		priority = 1000,
		config = function()
			vim.cmd.colorscheme("tokyonight-night")
		end,
	},
	{
		"rose-pine/neovim",
    lazy = false,
		name = "rose-pine",
		priority = 1000,
	},
	{
		"catppuccin/nvim",
		lazy = false,
		name = "catppuccin",
		priority = 1000,
	},
}
