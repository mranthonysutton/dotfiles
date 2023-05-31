require("nvim-autopairs").setup {}

local lsp = require("lsp-zero")
lsp.preset('recommended')

lsp.ensure_installed({
    'tsserver',
    'eslint',
    'lua_ls',
    'cssls',
    'gopls',
    'html',
    'pylsp',
    'jsonls',
    'texlab',
    'rust_analyzer',
    'tailwindcss',
})

local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }


cmp.setup({
    mapping = {
        ['<CR>'] = cmp.mapping.confirm({ select = false }),
    }
})


lsp.on_attach(function(client, bufnr)
    local opts = { buffer = bufnr, remap = false }

    vim.keymap.set("n", "<leader>gd", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "<leader>gr", function() vim.lsp.buf.references() end, opts)
    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
    vim.keymap.set("n", "<leader>sd", vim.diagnostic.open_float, opts)
end)

lsp.setup()
