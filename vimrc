set path+=**

let mapleader=" "

syntax enable

set tabstop=4
set autoindent
set softtabstop=4
set shiftwidth=4
set smartindent
set expandtab
set nowrap
set noswapfile
set undodir=~/.vim/undodir
set undofile
set backspace=indent,eol,start

set number
set relativenumber
set signcolumn=yes
set showcmd
set cursorline
filetype indent on
set wildmenu
set lazyredraw
set showmatch

set ignorecase

set incsearch
set hlsearch

set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=indent
set background=dark

source ~/.vim/vim_remap
