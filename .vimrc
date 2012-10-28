filetype on
filetype indent on
filetype plugin on

" Highlight the syntax
syntax on

" Show line numbers
set number

" English charset by default
set iminsert=0

" English charset by default for search
set imsearch=0

" Ignore letters register for search
set ic

" Highlight search
set hls

" Incremental search
set is

" Text width
set textwidth=70

" Minimal heigh
set winminheight=0

" Maximum size for active window
set noequalalways
set winheight=9999

" Insert 4 spaces instead tab
set ts=4

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

" Next tag search
nmap <F1> :tn<CR>
imap <F1> <Esc>:tn<CR>
vmap <F1> <Esc>:tn<CR>

" Prev tag search
nmap <F2> :tn<CR>
imap <F2> <Esc>:tn<CR>
vmap <F2> <Esc>:tn<CR>

" Save file
nmap <F3> :w!<CR>
imap <F3> <Esc>:w!<CR>
vmap <F3> <Esc>:w!<CR>

" Close vim
nmap <F4> :q<CR>
imap <F4> <Esc>:q<CR>
vmap <F4> <Esc>:q<CR>

" Open/close Tag List plugin window
map <F5> :TlistToggle<CR>
imap <F5> <Esc>:TlistToggle<CR>
vmap <F5> <Esc>:TlistToggle<CR>

" Open Project plugin window
map <F6> :Project<CR>
imap <F6> <Esc>:Project<CR>
vmap <F6> <Esc>:Project<CR>

" Open NERDTree plugin window
map <F7> :NERDTree<CR>
imap <F7> <Esc>:NERDTree<CR>
vmap <F7> <Esc>:NERDTree<CR>

" Switch buffers
set switchbuf=usetab
nnoremap <F8> :sbnext<CR>
nnoremap <S-F8> :sbprevious<CR>

" Page Up/Down behaviour
nmap <PageUp> <C-U><C-U>
imap <PageUp> <C-O><C-U><C-O><C-U>
nmap <PageDown> <C-D><C-D>
imap <PageDown> <C-O><C-D><C-O><C-D>

" Fix paste operation indents
set pastetoggle=<F9>

" Taglist plugin configuration
let Tlist_Auto_Open = 0
let Tlist_Exit_OnlyWindow = 1     " exit if taglist is last window open
let Tlist_Show_One_File = 1       " Only show tags for current buffer
let Tlist_Enable_Fold_Column = 0  " no fold column (only showing one file)

" Winmanager plugin configuration
let g:explShowHiddenFiles = 1

" Aliases
cnoreabbrev tlt TlistToggle
