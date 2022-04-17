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
Plug 'mhinz/vim-startify'
Plug 'ap/vim-css-color'
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-surround'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'majutsushi/tagbar'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'akinsho/bufferline.nvim'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }

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
set tabstop=4 softtabstop=4
set mouse=a

let g:coc_global_extensions = [
  \ 'coc-tsserver',
  \ 'coc-json',
  \ 'coc-css',
  \  'coc-eslint',
  \  'coc-prettier',
  \  'coc-go',
  \  'coc-rust-analyzer'
  \ ]

set termguicolors
lua << EOF
require("bufferline").setup{}
EOF
