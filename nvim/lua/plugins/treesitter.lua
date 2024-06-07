return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local config = require("nvim-treesitter.configs")

		config.setup({
			ensure_installed = { "lua", "go", "html", "javascript", "css", "yaml", "toml" },
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
