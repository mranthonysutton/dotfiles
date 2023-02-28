-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
      -- Packer can manage itself
      use 'wbthomason/packer.nvim'


      -- Themes
      use("ellisonleao/gruvbox.nvim")
      use "rebelot/kanagawa.nvim"
      use { "catppuccin/nvim", as = "catppuccin" }
      use { 'rose-pine/neovim', as = 'rose-pine' }

      -- Utils
      use('tpope/vim-fugitive')
      use('preservim/nerdcommenter')
      use('iamcco/markdown-preview.nvim')
      use('jiangmiao/auto-pairs')
      use('windwp/nvim-ts-autotag')
      use('norcalli/nvim-colorizer.lua')

      -- Treesitter/Telescope
      use {
          'nvim-telescope/telescope.nvim', tag = '0.1.1',
          requires = { { 'nvim-lua/plenary.nvim' } }
      }
      use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
      use('nvim-treesitter/playground')
      use {
          'VonHeikemen/lsp-zero.nvim',
          branch = 'v1.x',
          requires = {
              -- LSP Support
              { 'neovim/nvim-lspconfig' }, -- Required
              { 'williamboman/mason.nvim' }, -- Optional
              { 'williamboman/mason-lspconfig.nvim' }, -- Optional

              -- Autocompletion
              { 'hrsh7th/nvim-cmp' }, -- Required
              { 'hrsh7th/cmp-nvim-lsp' }, -- Required
              { 'hrsh7th/cmp-buffer' }, -- Optional
              { 'hrsh7th/cmp-path' }, -- Optional
              { 'saadparwaiz1/cmp_luasnip' }, -- Optional
              { 'hrsh7th/cmp-nvim-lua' }, -- Optional

              -- Snippets
              { 'L3MON4D3/LuaSnip' }, -- Required
              { 'rafamadriz/friendly-snippets' }, -- Optional
          }
      }
    end)
