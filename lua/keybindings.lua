vim.g.leader = ' '

vim.api.nvim_set_keymap("n", "<leader>ne", ":NERDTreeToggle<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>h", ":wincmd h<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>j", ":wincmd j<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>k", ":wincmd k<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>l", ":wincmd l<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>gs", ":G<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>gc", ":Git commit<CR>", {noremap = true, silent = true})


-- Telescope
vim.api.nvim_set_keymap("n", "<leader>pf", ":lua require('telescope.builtin').find_files()<CR>", {noremap=true, silent=true})
vim.api.nvim_set_keymap("n", "<leader>pg", ":lua require('telescope.builtin').live_grep()<CR>", {noremap=true, silent=true})
vim.api.nvim_set_keymap("n", "<leader>rn", ":lua vim.lsp.buf.rename()<CR>", {noremap=true, silent=true})
vim.api.nvim_set_keymap("n", "<leader>gd", ":lua vim.lsp.buf.definition()", {noremap=true, silent=true})
vim.api.nvim_set_keymap("n", "<leader>gr", ":lua vim.lsp.buf.references()", {noremap=true, silent=true})

vim.cmd([[
  inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
]])
