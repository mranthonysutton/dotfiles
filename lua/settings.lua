local vim = vim
local o = vim.o
local bo = vim.bo
local wo = vim.wo

vim.g.mapleader = ' '


--o.termguicolors = true
o.syntax = 'on'
o.errorbells = false
o.smartcase = true
o.showmode = false
o.incsearch = true
o.hidden = true
o.cmdheight = 2
o.wrap = true
o.linebreak = true
o.completeopt='menuone,noselect'
bo.autoindent = true
bo.smartindent = true
o.background='dark'

o.shiftwidth = 4
o.expandtab = true
wo.number = true -- display line numbers
wo.relativenumber = true -- display relative line numbers
wo.signcolumn = 'yes'
wo.wrap = true

vim.g.NERDTreeShowHidden = 1
vim.g.NERDTreeWinPos = "right"

vim.cmd([[
  let g:prettier#config#single_quote = 'true'
  autocmd BufWritePre *js,*ts,*jsx,*tsx,*.graphql,*.json,*.md,*.mdx,*.html,*.css :Prettier
]])
