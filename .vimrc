set nocompatible

filetype on
filetype indent on
filetype plugin on

set hidden

" Disable the swap files creation
set noswapfile

" Show hidden characters
set listchars=tab:>-,trail:~,extends:>,precedes:<
set list

" Highlight the syntax
syntax on
set background=dark "or light

" Show line numbers
set number

" English charset by default
set iminsert=0

" English charset by default for search
set imsearch=0

" Ignore letters register for search
set ic

" Highlight search
set hlsearch

nmap <C-h> :set hlsearch!<CR>
imap <C-h> <Esc> :set hlsearch!<CR>
vmap <C-h> <Esc> :set hlsearch!<CR>

" Incremental search
set is

" Text width
" set textwidth=80

" Minimal heigh
set winminheight=0

" Maximum size for active window
set noequalalways
set winheight=9999

" Insert 4 spaces instead tab
set tabstop=4
set shiftwidth=4
set expandtab

" Show executed command
set showcmd

" Lynebreak by words but not letters
set linebreak
set dy=lastline

" Autocomplete
set completeopt=menu

" Edit mode for finded line
set incsearch

" Stop search at the file end
set nowrapscan

" Build cscope database
nmap <F1> :!cscope -R -b<CR>
imap <F1> <Esc>:!cscope -R -b<CR>
vmap <F1> <Esc>:!cscope -R -b<CR>

" Save file
nmap <F2> :w!<CR>
imap <F2> <Esc>:w!<CR>
vmap <F2> <Esc>:w!<CR>

" Make
nmap <F3> :!make<CR>
imap <F3> <Esc>:!make<CR>
vmap <F3> <Esc>:!make<CR>

" Switch buffers
set switchbuf=usetab
nnoremap <C-s> :sbnext<CR>
nnoremap <C-a> :sbprev<CR>

" Close vim
nmap <F4> :q!<CR>
imap <F4> <Esc>:q!<CR>
vmap <F4> <Esc>:q!<CR>

" Replace tabulation symbols to the spaces
map <F5> :retab<CR>
imap <F5> <Esc>:retab<CR>
vmap <F5> <Esc>:retab<CR>

" Paste indents  toggle
nnoremap <F8> :set invpaste paste?<CR>
set pastetoggle=<F8>
set showmode

" Show/hide line numbers
map <F9> :set invnumber<CR>
imap <F9> <ESC>:set invnumber<CR>
vmap <F9> <ESC>:set invnumber<CR>

" Close buffer command
map <C-w> :bw<CR>
imap <C-w> <ESC>:bw<CR>
vmap <C-w> <ESC>:bw<CR>

" Page Up/Down behaviour
nmap <PageUp> <C-U><C-U>
imap <PageUp> <C-O><C-U><C-O><C-U>
nmap <PageDown> <C-D><C-D>
imap <PageDown> <C-O><C-D><C-O><C-D>

" Taglist plugin configuration
let Tlist_Auto_Open = 0
let Tlist_Exit_OnlyWindow = 1     " exit if taglist is last window open
let Tlist_Show_One_File = 1       " Only show tags for current buffer
let Tlist_Enable_Fold_Column = 0  " no fold column (only showing one file)

" Winmanager plugin configuration
let g:explShowHiddenFiles = 1

" Aliases
cnoreabbrev tlt TlistToggle
" cscope commands to search
" symbols
cnoreabbrev cs cs f s
" definition
cnoreabbrev cg cs f g
" called by this function
cnoreabbrev cd cs f d
" calls this function
cnoreabbrev cc cs f c
" text
cnoreabbrev ct cs f t

" Abbreviatures
" Python
iab utf! # -*- coding: utf-8 -*-
