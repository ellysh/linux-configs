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

" Insert by 3rd mouse button
set mouse=a
map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>

" Autocomplete
set completeopt=menu

" Edit mode for finded line
set incsearch

" Stop search at the file end
set nowrapscan

" Open/close Winmanager plugin window
map <F1> :WMToggle<CR>
imap <F1> <Esc>:WMToggle<CR>
vmap <F1> <Esc>:WMToggle<CR>

" Open/close Tag List plugin window
map <F2> :TlistToggle<CR>
imap <F2> <Esc>:TlistToggle<CR>
vmap <F2> <Esc>:TlistToggle<CR>

" Очистить подсветку последнего найденного выражения
nmap <F3> :nohlsearch<CR>
imap <F3> <Esc>:nohlsearch<CR>
vmap <F3> <Esc>:nohlsearch<CR>gv

" Save file
nmap <F4> :w!<CR>
imap <F4> <Esc>:w!<CR>
vmap <F4> <Esc>:w!<CR>

" Close vim
nmap <F5> :q<CR>
imap <F5> <Esc>:q<CR>
vmap <F5> <Esc>:q<CR>

" Page Up/Down behaviour
nmap <PageUp> <C-U><C-U>
imap <PageUp> <C-O><C-U><C-O><C-U>
nmap <PageDown> <C-D><C-D>
imap <PageDown> <C-O><C-D><C-O><C-D>

" Taglist plugin configuration
let Tlist_Auto_Open = 1
let Tlist_Exit_OnlyWindow = 1     " exit if taglist is last window open
let Tlist_Show_One_File = 1       " Only show tags for current buffer
let Tlist_Enable_Fold_Column = 0  " no fold column (only showing one file)

" Winmanager plugin configuration
let g:explShowHiddenFiles = 1

" Aliases
cnoreabbrev tlt TlistToggle
