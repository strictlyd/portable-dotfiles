set nocompatible
syntax on
filetype plugin indent on

" Specify a directory for plugins
call plug#begin()

" Make sure you use single quotes

Plug 'pangloss/vim-javascript'
Plug 'vim-airline/vim-airline'
Plug 'crusoexia/vim-monokai'
Plug 'vim-airline/vim-airline-themes'
Plug 'rcabralc/monokai-airline.vim'
Plug 'hashivim/vim-terraform'
Plug 'vim-syntastic/syntastic'
Plug 'juliosueiras/vim-terraform-completion'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'avakhov/vim-yaml'

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'mdempsky/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }

" Deoplete, for vim-go/vim-terraform-completion autocompletion
let g:deoplete#enable_at_startup = 1

" au BufWritePost *.go !gofmt -w %

" Initialize plugin system
call plug#end()

" Set theme
let g:airline_theme='monokai'

" Terraform
" Format on save
autocmd BufRead,BufNewFile,BufEnter *.tf.jinja set filetype=terraform
let g:terraform_fmt_on_save=1

" Syntastic Config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" (Optional)Remove Info(Preview) window
set completeopt-=preview

" (Optional)Hide Info(Preview) window after completions
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" (Optional) Enable terraform plan to be include in filter
let g:syntastic_terraform_tffilter_plan = 1

" (Optional) Default: 0, enable(1)/disable(0) plugin's keymapping
let g:terraform_completion_keys = 1

" (Optional) Default: 1, enable(1)/disable(0) terraform module registry completion
let g:terraform_registry_module_completion = 0

" Python
augroup python
  au FileType python set nocindent
  let python_highlight_all = 1
  au FileType python syn keyword pythonDecorator True None False self

  au BufNewFile,BufRead *.jinja set syntax=htmljinja
  au BufNewFile,BufRead *.mako set ft=mako
augroup END

" add yaml stuffs
au! BufNewFile,BufReadPost *.{yaml,yml,sls} set filetype=yaml
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" Line numbering
set number                          " Line numbering on

" Indentation
set expandtab                       " Expands tabs into spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Match brace and brackets
set showmatch

" Remap key bindings
nnoremap <C-a> <C-w>
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-h> <C-w><C-h>

" Strip trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e

" Yank and paste into clipboard
set clipboard=unnamed

" Set backspace to remove autoindents
set backspace=indent,eol,start

" Set command history buffer
set history=1000

" Set Monokai theme
syntax enable
colorscheme monokai

execute pathogen#infect()
