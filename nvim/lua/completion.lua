local lspconfig = require'lspconfig'
local cmp = require'cmp'
local treesitterConfig = require'nvim-treesitter.configs'

-- Don't show the dumb matching stuff.
vim.cmd [[set shortmess+=c]]

local function on_attach()
    -- TODO: TJ told me to do this and I should do it because he is Telescopic
    -- "Big Tech" "Cash Money" Johnson
end

treesitterConfig.setup {
  ensure_installed = {"cpp", "css", "go", "graphql", "javascript", "json", "bibtex", "latex", "html", "python", "scss",
  	"tsx", "typescript", "yaml", "lua", "java"},
  highlight = {
    enable = true,
  },
}

vim.g.completion_matching_strategy_list = {'substring', 'exact', 'fuzzy', 'all'}

-- CMP Setup
cmp.setup ({
  completion = {
    completeopt = 'menu,menuone,noinsert'
  },
  snippet = {
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body)
    end,
  },
  mapping = {
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm({
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    }),
  ['<Tab>'] = cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'}),
  ['<S-Tab>'] = cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'}),
  },
  sources = {
    { name = 'nvim_lsp' }
  }

})

-- The nvim-cmp almost supports LSP's capabilities so You should advertise it to LSP servers..
local capabilities = vim.lsp.protocol.make_client_capabilities()
--capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

local default_config = {
  on_attach = default_on_attach,
  --capabilities = capabilities
}

local gopls_config = vim.tbl_extend('force', default_config, {
  settings = {
    gopls = {
      analyses = {
        unusedparams = true,
      },
      staticcheck = true,
    },
  },
})

local vslang_capabilities = vim.lsp.protocol.make_client_capabilities()
vslang_capabilities.textDocument.completion.completionItem.snippetSupport = true

-- Language Servers
lspconfig.tsserver.setup{ default_config }
lspconfig.cssls.setup{ capabilities = vslang_capabilities }
lspconfig.html.setup{ capabilities = vslang_capabilities }
lspconfig.jsonls.setup{ capabilities = vslang_capabilities }
lspconfig.graphql.setup{ default_config }
lspconfig.pylsp.setup{ default_config }
lspconfig.ccls.setup{ default_config }
lspconfig.texlab.setup{ default_config }
lspconfig.tailwindcss.setup{ default_config }
lspconfig.gopls.setup{ gopls_config }
lspconfig.jdtls.setup{ cmd = {'jdtls'} }
