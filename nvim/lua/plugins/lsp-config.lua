return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "gopls",
          "cssls",
          "yamlls",
          "tsserver",
          "taplo",
          "jsonls",
          "html",
          "csharp_ls",
          "emmet_ls",
        },
        auto_install = true,
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local opts = { noremap = true, silent = true }

      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      local lspconfig = require("lspconfig")

      lspconfig.lua_ls.setup({
        capabilities = capabilities,
      })

      lspconfig.tsserver.setup({
        capabilities = capabilities,
      })

      lspconfig.csharp_ls.setup({ capabilities = capabilities })

      lspconfig.cssls.setup({ capabilities = capabilities })

      lspconfig.html.setup({ capabilities = capabilities })

      lspconfig.emmet_ls.setup({
        capabilities = capabilities,
        filetypes = { "html", "typescriptreact", "javascriptreact", "css", "scss", "sass", "less" }
      })

      lspconfig.gopls.setup({
        capabilities = capabilities,
        settings = {
          gopls = {
            completeUnimported = true,
            usePlaceholders = true,
            analyses = {
              unusedparams = true,
            },
          },
        },
      })

      vim.keymap.set("n", "<leader>d", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },
}
