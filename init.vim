" Settings to use .vimrc
"set runtimepath+=~/.vim,~/.vim/after
"set packpath+=~/.vim
"source ~/.vimrc

let g:python3_host_prog = '/usr/bin/python3'

" Plugins
call plug#begin('~/.local/share/nvim/plugged')
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'tpope/vim-surround'
Plug 'morhetz/gruvbox'
call plug#end()

"====================Plugins setup====================
"Shougo/deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#disable_auto_complete = 1
inoremap <expr> <C-n>  deoplete#mappings#manual_complete()
inoremap <expr> <C-p>  deoplete#mappings#manual_complete()

set path+=**
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

"Colorschemes
"Solarized
"set background=dark
"colorscheme solarized8_high

"Groovebox
set background=dark
let g:gruvbox_contrast_dark='hard'
colorscheme gruvbox

syntax enable
filetype plugin on

set termguicolors

"Disable cursor-styling
set guicursor=

set modelines=0

" Tab settings
set tabstop=4
set shiftwidth=4
set expandtab

set encoding=utf-8
set scrolloff=3
"set autoindent
set smartindent
set showmode
set showcmd
set hidden
set wildmode=list:longest
set visualbell
set cursorline
set backspace=indent,eol,start
set relativenumber
set number
set undofile

let mapleader = ","

noremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

set wrap
set textwidth=100
set formatoptions=qrn1
set colorcolumn=80

set list listchars=tab:>-,trail:·,eol:¶

tnoremap <Esc><Esc> <C-\><C-n>

tnoremap <C-h> <C-\><C-n><C-w>h
tnoremap <C-j> <C-\><C-n><C-w>j
tnoremap <C-k> <C-\><C-n><C-w>k
tnoremap <C-l> <C-\><C-n><C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"Remove veritcal dashes for the verical split
"set fillchars=vert:\ ,fold:-

" Statusline
" Reference: http://got-ravings.blogspot.com/2008/08/vim-pr0n-making-statuslines-that-own.html
set laststatus=2
set statusline=%f       "tail of the filename
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}] "file format
set statusline+=%h      "help file flag
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag
set statusline+=%y      "filetype
set statusline+=%=      "left/right separator set statusline+=%c,
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file

