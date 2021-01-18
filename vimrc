set number
set numberwidth=2

syntax on

set showmatch

set cursorline

set autoindent

set nowrap

set ts=2 sw=2 softtabstop=2 expandtab

set incsearch

set noswapfile

set path+=**

set wildmenu

call plug#begin("~/.config/nvim/plugged")
  Plug 'ayu-theme/ayu-vim'
  Plug 'pangloss/vim-javascript'
  Plug 'maxmellon/vim-jsx-pretty'

  Plug 'itchyny/lightline.vim'
  set laststatus=2
call plug#end()

set termguicolors
let ayucolor="dark"
colorscheme ayu
