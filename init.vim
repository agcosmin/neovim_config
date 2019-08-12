" Plugins
call plug#begin('~/.local/share/nvim/plugged')
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'tpope/vim-surround'
Plug 'NLKNguyen/papercolor-theme'
call plug#end()

"Plugins setup
"Shougo/deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#disable_auto_complete = 1
inoremap <expr> <C-n>  deoplete#manual_complete()
inoremap <expr> <C-p>  deoplete#manual_complete()

let g:PaperColor_Theme_Options = {
  \   'language': {
  \     'python': {
  \       'highlight_builtins' : 1
  \     },
  \     'cpp': {
  \       'highlight_standard_library': 1
  \     },
  \     'c': {
  \       'highlight_builtins' : 1
  \     }
  \   }
  \ }

"Neovim setup
set path+=**

set termguicolors

colorscheme PaperColor

syntax enable

"Disable cursor-styling
set guicursor=

set modelines=0

" Tab settings
set tabstop=4
set shiftwidth=4
set expandtab

set scrolloff=3
set smartindent
set showmode
set hidden
set wildmode=list:longest
set visualbell
set cursorline
set relativenumber
set number
set undofile

let mapleader = ","

noremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set showmatch
nnoremap <leader><space> :noh<cr>

set wrap
set textwidth=80
set formatoptions+=rn1
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

" Statusline
" Reference: http://got-ravings.blogspot.com/2008/08/vim-pr0n-making-statuslines-that-own.html
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

