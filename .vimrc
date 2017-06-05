" Specify a directory for plugins
call plug#begin()

" Make sure you use single quotes

Plug 'pangloss/vim-javascript'

" Initialize plugin system
call plug#end()

" Line numbering
set number                          " Line numbering on

" Indentation
set expandtab                       " Expands tabs into spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Remap key bindings
:nnoremap <C-b> <C-w>

" Set Monokai theme
syntax enable
colorscheme monokai

