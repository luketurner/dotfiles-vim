set nocompatible
filetype off

" vundle config
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


" Plugin to be used
" Sandwich between two filetype declarations
" for compatibility
"
Plugin 'gmarik/Vundle.vim'

Plugin 'ervandew/supertab'
Plugin 'rstacruz/sparkup'
Plugin 'scrooloose/nerdcommenter'
Plugin 'mineiro/vim-latex'
Plugin 'https://github.com/vim-scripts/Rainbow-Parenthsis-Bundle.git'
Plugin 'msanders/snipmate.vim'
Plugin 'tpope/vim-surround'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'thinca/vim-guicolorscheme'

" Themes
Plugin 'nanotech/jellybeans.vim'
Plugin 'delluminatus/vim-irblack'
Plugin 'https://github.com/vim-scripts/Zenburn.git'
Plugin 'altercation/vim-colors-solarized'

" Languages
Plugin 'avakhov/vim-yaml'
Plugin 'tpope/vim-markdown'
Plugin 'timcharper/textile.vim'
Plugin 'wting/rust.vim'

call vundle#end()
filetype plugin indent on
syntax on

"set background=dark
"colorscheme solarized

" Modelines might have exploits?
set modelines=0
" Tab configuration
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" General rules for niceity
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
"set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2

""
"" SEARCHING
""

" Inserts \v's into regexps to make them more Perl-like.
nnoremap / /\v
vnoremap / /\v

" Sane search settings
set ignorecase
set smartcase "makes only searches with upcase case-sensitive
set gdefault

" Highlight results as I search
set incsearch
set showmatch
set hlsearch


""
"" CONVENIENCE KEYBINDS
""

" Remap leader to ,
let mapleader = ","

" Easy search quitting
nnoremap <leader><space> :noh<cr>

" make ; do :'s job
nnoremap ; :

" Remap Tab to bracket jump
nnoremap <tab> %
vnoremap <tab> %

" Return to normal mode easily
inoremap jj <ESC>

" hard-wrap paragraph
nnoremap <leader>q gqip

""
"" LINES AND COLUMNS
""

" Handle long lines nicely
set wrap
set textwidth=79
set formatoptions=qrn1
"set colorcolumn=85

" Fix up-down movement
" i.e. use visual lines instead of actual lines
nnoremap j gj
nnoremap k gk

""
"" MISC
""

" Show invisible characters at ,l
nmap <leader>l :set list!<CR>
set listchars=tab:.\ ,eol:�

" Save on losing focus
au FocusLost * :wa

"" Vim 7.whatever features

" Have relative line numbers
" set rnu

" Enable undo file (persistent undo across sessions)
"set undofile
