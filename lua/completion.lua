local lspconfig = require'lspconfig'

-- Don't show the dumb matching stuff.
vim.cmd [[set shortmess+=c]]

local function on_attach()
    -- TODO: TJ told me to do this and I should do it because he is Telescopic
    -- "Big Tech" "Cash Money" Johnson
end

vim.g.completion_matching_strategy_list = {'substring', 'exact', 'fuzzy', 'all'}

-- Language Servers
lspconfig.tsserver.setup{ on_attach=on_attach }
lspconfig.cssls.setup{ on_attach=on_attach }
lspconfig.html.setup{ on_attach=on_attach }
lspconfig.jsonls.setup{ on_attach=on_attach }
lspconfig.graphql.setup{ on_attach=on_attach }
lspconfig.pylsp.setup{ on_attach=on_attach }

require'cmp'.setup {
  enabled = true;
  autocomplete = true;
  debug = false;
  min_length = 1;
  preselect = 'enable';
  throttle_time = 80;
  source_timeout = 200;
  incomplete_delay = 400;
  max_abbr_width = 100;
  max_kind_width = 100;
  max_menu_width = 100;
  documentation = true;

  source = {
    path = true;
    buffer = true;
    calc = true;
    nvim_lsp = true;
    nvim_lua = true;
    vsnip = true;
    ultisnips = true;
  };
}
