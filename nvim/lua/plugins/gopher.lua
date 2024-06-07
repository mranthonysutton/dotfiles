return {
	"olexsmir/gopher.nvim",
	ft = "go",
	config = function(_, opts)
		require("gopher").setup(opts)

		vim.keymap.set("n", "<leader>sj", "<cmd>GoTagAdd json <CR>")
		vim.keymap.set("n", "<leader>sy", "<cmd>GoTagAdd yaml <CR>")
	end,
	build = function()
		vim.cmd([[silent! GoInstallDeps]])
	end,
}
