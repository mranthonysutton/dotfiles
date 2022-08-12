local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Look / feel
  use 'gruvbox-community/gruvbox'
  use 'ryanoasis/vim-devicons'
  use 'tjdevries/colorbuddy.vim'
  use 'tjdevries/gruvbuddy.nvim'
  use 'mhartington/oceanic-next'
  use 'ayu-theme/ayu-vim'
  use 'dracula/vim'
  use 'arcticicestudio/nord-vim'
  use 'lalitmee/cobalt2.nvim'
  use { "catppuccin/nvim", as = "catppuccin" }

  -- LSP
  use 'neovim/nvim-lspconfig'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-lua/popup.nvim'
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

  use 'nvim-lua/telescope.nvim'
  use 'nvim-lua/diagnostic-nvim'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/vim-vsnip'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'fatih/vim-go'
  use 'mfussenegger/nvim-jdtls'

  -- Utils
  use 'jiangmiao/auto-pairs'
  use 'tpope/vim-fugitive'
  use 'preservim/nerdtree'
  use 'preservim/nerdcommenter'
  use 'sheerun/vim-polyglot'
  use {'prettier/vim-prettier', run = 'yarn install'}
  use 'lervag/vimtex'
  use {'iamcco/markdown-preview.nvim', run="yarn install"}
  use 'norcalli/nvim-colorizer.lua'
  use 'tell-k/vim-autopep8'
  use 'ap/vim-css-color'
  use 'mattn/emmet-vim'
end
)
