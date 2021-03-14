set nu rnu
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
  Plug 'maxmellon/vim-jsx-pretty'
  Plug 'flazz/vim-colorschemes'

  Plug 'itchyny/lightline.vim'
  set laststatus=2

  Plug 'editorconfig/editorconfig-vim'
call plug#end()

colorscheme peachpuff
highlight Comment ctermfg=4
highlight LineNr ctermfg=3
highlight CursorLineNr ctermfg=3
highlight Visual cterm=bold ctermbg=grey ctermfg=NONE

" Uncomment the following to have Vim jump to the last position when                                                       
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'
