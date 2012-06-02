"""""""""""""""""""""""""""""""""""""
" Vim Configuration File
" ~/.vimrc
"
" Priyesh Patel
"""""""""""""""""""""""""""""""""""""

" no compatibility with vi
set nocompatible

" pathogen
filetype off
runtime bundle/pathogen/autoload/pathogen.vim
call pathogen#infect()

" syntax
filetype on
filetype plugin on
filetype indent on
syntax on

" spelling
setlocal spelllang=en_gb

" appearance
set encoding=utf-8
set termencoding=utf-8
set laststatus=2
set ruler
" set colorcolumn=80
set showmode
set showcmd
set number
set title

" behaviour 
autocmd BufEnter * cd %:p:h " cd to the current file's dir
set wildmenu
set backspace=indent,eol,start
set textwidth=79
set showbreak=>\ 
set scrolloff=8
set foldenable
set visualbell
set splitbelow
set mouse=a
"set term=xterm-256color

" tabs
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smartindent
set autoindent
set expandtab
set smarttab

" colours
"set background=dark
"colorscheme solarized
colors darkburn

" mappings
let mapleader = ","
nnoremap <leader>q gqip " wrap all text
nnoremap <F2> :GundoToggle<CR> " Gundo
nmap <silent> <F3> :noh<CR> " stop highlighting
nmap <silent> <F4> :set list!<CR> " toggle unprintable characters
map <F5> :set spell!<CR> " toggle spelling
nmap <space> :
imap jj <esc>

" searching
set hlsearch
set incsearch
set showmatch
set smartcase
set ignorecase

" files
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd BufNewFile,BufRead *.json set filetype=javascript
autocmd BufNewFile,BufRead *.json set tw=0

" powerline
let Powerline_symbols = "unicode"

" supertab
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview
highlight Pmenu ctermbg=238 gui=bold

" colorcolumn while <7.3
match ErrorMsg '\%>80v.\+'

" gui
if has("gui_running")
    set guifont=Consolas:h11
    set guioptions-=m
    set guioptions-=T
endif
