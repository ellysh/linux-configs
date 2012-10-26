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
" установить шрифт Courier New Cyr
" set guifont=courier_new:h10:cRUSSIAN
" Insert 4 spaces instead tab
set ts=4
" Show executed command
set showcmd
" Lynebreak by words but not letters
set linebreak
set dy=lastline

" Taglist plugin configuration
let Tlist_Auto_Open = 1
let Tlist_Exit_OnlyWindow = 1     " exit if taglist is last window open
let Tlist_Show_One_File = 1       " Only show tags for current buffer
let Tlist_Enable_Fold_Column = 0  " no fold column (only showing one file)

" Aliases
cnoreabbrev tlt TlistToggle
