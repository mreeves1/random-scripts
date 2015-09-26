set colorcolumn=80
set selectmode=mouse
set backupdir=/tmp
set directory=/tmp
set guifont=Lucida_Console:h8
set guioptions-=T
set errorfile=/tmp/mreeves.errors.log
set noic
" set ic "ignore case
set fileformats=unix,dos,mac
set list
set listchars=tab:\|\
highlight StatusLineNC guifg=#ff0000 guibg=#000000
highlight StatusLine guifg=#00ff00 guibg=#000000
set hls
hi Normal guibg=black guifg=white
hi Search guibg=white guifg=black
hi IncSearch guibg=white guifg=black
set tags=./tags
set mousef
syntax on

set autoread
set history=700
set ruler

set backspace=eol,start,indent
set whichwrap+=<,>,h,l

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
" set lbr
" set tw=500

"set ai "Auto indent
"set si "Smart indent
"set wrap "Wrap lines

" Highlight trailing whitespace """"""""""""""""""""""""""""""""""""""""""""""""
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
