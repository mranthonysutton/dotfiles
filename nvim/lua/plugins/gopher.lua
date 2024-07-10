--return {
--"olexsmir/gopher.nvim",
--ft = "go",
--config = function(_, opts)
--require("gopher").setup(opts)

--vim.keymap.set("n", "<leader>sj", "<cmd>GoTagAdd json <CR>")
--vim.keymap.set("n", "<leader>sy", "<cmd>GoTagAdd yaml <CR>")
--end,
--build = function()
--vim.cmd.GoInstallDeps()
--end,
--}

return {
  "fatih/vim-go",
  config = function()
    vim.keymap.set("n", "<leader>sj", "<cmd>GoAddTags <CR>")
    vim.keymap.set("n", "<leader>sy", "<cmd>GoAddTags yaml<CR>")
  end,
  build = function ()
    vim.cmd.GoInstallBinaries()
  end
}
