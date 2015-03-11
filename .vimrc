set encoding=utf-8
set scrolloff=3
set autoindent

set number
set incsearch
set showmatch
set hlsearch

set t_Co=256

"Shortcut to save
:nmap <c-s> :w<CR>
:imap <c-s> <Esc>:w<CR>a
:imap <c-s> <Esc><c-s>
" Window movement
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

syntax on
filetype on
filetype plugin indent on " enable loading indent file for filetype
filetype plugin on
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

set background=dark

set makeprg=javac\ *.java

execute pathogen#infect()

"Theme settings"
let g:hybrid_use_Xresources = 1
colorscheme hybrid

"NERDTree settings"
let NERDTreeWinSize=25
map <c-n> :NERDTreeToggle<CR>
autocmd bufenter * if(winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
"Abre NERDTree al iniciar vi
"autocmd vimenter * NERDTree

"Airline settings"
let g:airline_powerline_fonts = 1
set guifont=Liberation\ Mono\ for\ Powerline\ 11
set laststatus=2
let g:airline#extensions#tabline#enabled=1
let g:tmuxline_preset = 'full'
let g:airline#extensions#tmuxline#enabled=1

"AutocomplPo settings"
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<C-g>u\<Tab>"
let g:acp_behaviorKeywordLength = 3
let g:acp_behaviorKeywordIgnores = ["while","for","def","class"]
