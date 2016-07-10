" Vim-plug setting

call plug#begin()
Plug 'vim-airline/vim-airline' " Lean & mean status/tabline for vim that's light as air.
Plug 'vim-airline/vim-airline-themes' " Themes for airline
Plug 'altercation/vim-colors-solarized' " Solarized theme for vim
call plug#end()

" Global

set nocompatible " Remove the support for vi
set foldmethod=syntax " Use the syntax to open/close fold
set foldcolumn=0 " Set the foldcolumn to 0
set foldlevel=100 " Set the foldlevel to 100
set so=10 " Begin scroll the screen while there are 10 lines
set number " Show the line number
syntax on " Allow vim to support languages' syntax
filetype on " Open filetype suppoort
filetype plugin on " Open filetype plugin support
filetype indent on " Open filetype indent support
set background=dark " Set the background to dark
colorscheme solarized " Use the solarized colorscheme
set list lcs=tab:\¦\  " Ues the ¦ to show tab

if has("autocmd")  " Go back to where you exited
    autocmd BufReadPost *
        \ if line("'\"") > 0 && line ("'\"") <= line("$") |
        \   exe "normal g'\"" |
        \ endif
endif

if has('mouse') " Add support for mouse
    set mouse=a
    set selectmode=mouse,key
    set nomousehide
endif

set autoindent " Use autoindent
set modeline " Add bottom modeline
set cursorline " Add cursor line
set cursorcolumn " Add cursor column

set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4

set showmatch " Show the match part
set matchtime=0 " Set match time to 0

if has('nvim')
   set ttimeout
   set ttimeoutlen=0
endif

" Use space to open/close folds
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>
vnoremap <Space> zf<Paste>

" Use j,k in warped lines
vmap j gj
vmap k gk
nmap j gj
nmap k gk

source ~/.config/nvim/config/airline.vim
