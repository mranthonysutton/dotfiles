syntax on
set encoding=utf-8
scriptencoding utf-8
filetype plugin indent on

set noerrorbells
set shiftwidth=4
set expandtab
set relativenumber
set nowrap
set smartcase
set noswapfile
set incsearch
set colorcolumn=80
set wrap
set linebreak
set cmdheight=2
" Allows the cursor to be an iCursor when editing
set guicursor+=i:ver100-iCursor

if (has("termguicolors"))
    set termguicolors
endif

call plug#begin()

" Look / Feel
Plug 'gruvbox-community/gruvbox'
Plug 'ryanoasis/vim-devicons'
Plug 'mhartington/oceanic-next'
Plug 'haishanh/night-owl.vim'

" JS/TS
Plug 'jiangmiao/auto-pairs'
Plug 'jparise/vim-graphql'
"Plug 'leafgarland/typescript-vim'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'mattn/emmet-vim'

" Utils
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'sheerun/vim-polyglot'
Plug 'prettier/vim-prettier'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Python
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'Guzzii/python-syntax'
Plug 'tell-k/vim-autopep8'

call plug#end()

" Color Scheme
let g:gruvbox_contrast_dark='hard'
let g:gruvbox_invert_selection='0'
let g:gruvbox_italic=1
let g:enable_bold_font=1
let g:enable_italic_font=1
colorscheme gruvbox
set background=dark

" colorscheme night-owl

"colorscheme OceanicNext

" Spelling errors
iab teh the
iab improt import
iab conts const
iab cosnt const

" Remap keys
let mapleader = " "
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nmap <leader>e :CocCommand explorer<CR>
nmap <leader>rn <Plug>(coc-rename)

" FZF settings
let $FZF_DEFAULT_COMMAND='rg --files'
nnoremap <leader>pf :Files<CR>

let $FZF_DEFAULT_OPTS='--reverse'
let g:fzf_layout = { 'window': {'width': 0.8, 'height': 0.8} }

" NerdTree
let NERDTreeShowHidden=1
let g:NERDTreeWinPos = "right"
nnoremap <leader>ne :NERDTreeToggle<CR>

" GoTo code navigation.
nmap <silent> <leader>gd <Plug>(coc-definition)
nmap <silent> <leader>gy <Plug>(coc-type-definition)
nmap <silent> <leader>gi <Plug>(coc-implementation)
nmap <silent> <leader>gr <Plug>(coc-references)

" VIM FuGITitive
nmap <leader>gs :G<CR>
nmap <leader>gc :Git commit<CR>

" COC Settings
let g:coc_global_extensions = [
            \ 'coc-pairs',
            \ 'coc-json',
            \ 'coc-python',
            \ 'coc-eslint',
            \ 'coc-css',
            \ 'coc-tsserver',
            \ 'coc-prettier',
            \ 'coc-explorer',
            \ 'coc-pyright',
            \ 'coc-tailwindcss',
            \ 'coc-omnisharp',
            \ 'coc-java',
            \ 'coc-texlab'
            \ ]

" COC Tab autocomplete
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Python
let g:pymode_indent = 0
let python_highlight_all = 0

let g:jsx_ext_required = 1

" remove arrow keys
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>

" Prettier
let g:prettier#config#single_quote = 'true'
