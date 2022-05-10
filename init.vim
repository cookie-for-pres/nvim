set nocompatible
filetype off

call plug#begin('~/.config/nvim/plugged')

Plug 'joshdick/onedark.vim'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'voldikss/vim-floaterm'
Plug 'ap/vim-css-color'
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-surround'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'majutsushi/tagbar'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'akinsho/bufferline.nvim'
Plug 'andweeb/presence.nvim'
Plug 'tpope/vim-commentary'
Plug 'mhinz/vim-startify'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

call plug#end()

colorscheme gruvbox

map <silent> <C-n> :NERDTreeToggle<CR>

filetype plugin indent on
syntax on
set number
set nowrap
set smartcase
set hlsearch
set noerrorbells
set expandtab
set smartindent
set smarttab
set autoindent
set tabstop=4 softtabstop=4 shiftwidth=4
set mouse=a
set clipboard=unnamed
set ttimeout
set ttimeoutlen=1
set ttyfast

let g:coc_global_extensions = [
  \ 'coc-tsserver',
  \ 'coc-json',
  \ 'coc-css',
  \  'coc-eslint',
  \  'coc-prettier',
  \  'coc-go',
  \  'coc-rust-analyzer'
  \ ]

let g:floaterm_keymap_toggle = '<leader>t'

set termguicolors
lua << EOF
require("bufferline").setup{}
EOF

