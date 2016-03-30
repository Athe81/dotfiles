"-------------------------------------------------------------------------------
"- General information ---------------------------------------------------------
"-------------------------------------------------------------------------------
"
" The file has very less comments. The plugin vim-scriptease makes it very
" easy to check the function of the setting. Just press K
"
" The plugin manager is vim-plug from: https://github.com/junegunn/vim-plug
" Look on the page for install instructions.
"
"-------------------------------------------------------------------------------
"- Defaults --------------------------------------------------------------------
"-------------------------------------------------------------------------------
if &compatible
    set nocompatible 
endif

set encoding=utf-8
set relativenumber
set autoindent
set incsearch
set hlsearch
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set wildmenu
set autoread
set laststatus=2
set history=1000
set scrolloff=5
set backspace=indent,eol,start

au FileType html setl tabstop=2 shiftwidth=2

let mapleader = ","
filetype plugin indent on
syntax enable


"-------------------------------------------------------------------------------
"- vim-plug (plugin manager) ---------------------------------------------------
"-------------------------------------------------------------------------------
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-scriptease'
Plug 'sjl/badwolf' " colorscheme
Plug 'vim-airline/vim-airline' " statusbar
Plug 'vim-airline/vim-airline-themes' " statusbar themes
Plug 'bling/vim-bufferline' " buffers in statusbar
Plug 'tpope/vim-fugitive' " git in statusbar
Plug 'airblade/vim-gitgutter' " show git diff
Plug 'Shougo/unite.vim' " search plugin
Plug 'sheerun/vim-polyglot' " language pack
call plug#end()


"-------------------------------------------------------------------------------
"- Colorscheme -----------------------------------------------------------------
"-------------------------------------------------------------------------------
colorscheme badwolf


"-------------------------------------------------------------------------------
"- Unite plugin configuration --------------------------------------------------
"-------------------------------------------------------------------------------
nnoremap <Leader>f :Unite file<CR>


"-------------------------------------------------------------------------------
"- Airline (statusbar) ---------------------------------------------------------
"-------------------------------------------------------------------------------
let g:airline_theme='badwolf'

" unicode symbols
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇ '
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'
