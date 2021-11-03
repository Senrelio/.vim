set path+=**

let mapleader=" "

set guifont=SF\ Mono:h15

set mouse=a

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
set scrolloff=10

highlight iCursor guifg=white guibg=steelblue
set guicursor=i:ver25-blinkon10

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

set nrformats=alpha



" pluggin setting

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'gruvbox-community/gruvbox'
Plug 'dracula/vim', {'as':'dracula'}
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'qpkorr/vim-renamer'
Plug 'sheerun/vim-polyglot'

call plug#end()

nnoremap <leader>f :call CocAction('format')<CR>

inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<c-j>'
let g:coc_snippet_prev = '<c-k>'

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gf <Plug>(coc-references)
nmap <silent> gy <Plug>(coc-type-definition)
nnoremap <silent><nowait> <leader>d :call CocActionAsync('jumpDefinition', ':OpenAsPreview')<CR>
nmap <silent> <F2> <Plug>(coc-rename)
nmap <silent> <F1> <Plug>(coc-fix-current)
nmap <silent> <F4> <Plug>(coc-diagnostic-next)
nmap <silent> <F3> <Plug>(coc-diagnostic-prev)
nnoremap <leader>gg :GFiles<CR>
nnoremap <leader>gf :Files<CR>

" colorscheme setting

"" let g:gruvbox_contrast_dark='hard'
"" colorscheme gruvbox
"" 
"" let g:gruvbox_bold='0'

colorscheme dracula

" remap

nnoremap j gj
nnoremap k gk

nnoremap <leader>nh :noh<CR>
nnoremap <leader>; $a;<esc>
inoremap <c-o> <esc>$a;
nnoremap <leader>, $a,<esc>
inoremap <c-l> <esc>$a,

inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

nnoremap <leader>sv :wincmd v<bar> :Ex <bar> :vertical resize 30<cr>
nnoremap <leader>h :wincmd h<cr>
nnoremap <leader>j :wincmd j<cr>
nnoremap <leader>k :wincmd k<cr>
nnoremap <leader>l :wincmd l<cr>

nnoremap <leader>` :split<cr> :wincmd j<cr> :terminal<cr> :resize -10<cr>
tnoremap <esc> <c-\><c-n>
