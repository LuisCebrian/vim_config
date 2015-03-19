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

"Remap VIM 0 to first non-blank character
map 0 ^

"Use the same clipboard as system
set clipboard=unnamed

"Rebind <Leader> key
let mapleader = ","

"Easy moving between tabs
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

"Better indentation
vnoremap < <gv
vnoremap > >gv

"Folding
nnoremap <space> za
vnoremap <space> zf
nnoremap <Leader><space> zi

set foldmethod=indent
set foldnestmax=1
set foldlevel=0

syntax on
filetype on
filetype plugin indent on " enable loading indent file for filetype
filetype plugin on
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

set background=dark

execute pathogen#infect()

"Theme settings"
let g:hybrid_use_Xresources = 1
colorscheme hybrid

"NERDTree settings"
let NERDTreeWinSize=25
map <c-n> :NERDTreeToggle<CR>
autocmd bufenter * if(winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
"autocmd vimenter * NERDTree

"Airline settings"
let g:airline_powerline_fonts = 1
set guifont=Liberation\ Mono\ for\ Powerline\ 11
set laststatus=2
let g:airline#extensions#tabline#enabled=1
let g:tmuxline_preset = 'full'
let g:airline#extensions#tmuxline#enabled=1

"Jedi-vim settings
let g:jedi#auto_vim_configuration = 0
let g:jedi#popup_on_dot = 0
let g:jedi#popup_select_first = 0
let g:jedi#completions_enabled = 0
let g:jedi#completions_command = ""
let g:jedi#show_call_signatures = "1"
"AutocomplPo settings"
"inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<C-g>u\<Tab>"
"let g:acp_behaviorKeywordLength = 2
"let g:acp_enableAtStartup = 1
"let g:acp_behaviorKeywordIgnores = ["while","for","if","def","class"]

