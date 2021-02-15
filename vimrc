" File              : .vimrc
" Author            : wuseman <wuseman@nr1.nu>
" Date              : 23.04.2019
" Last Modified Date: 16/Feb/2020
" Last Modified By  : wuseman <wuseman@nr1.nu>
" Use Vim settings, rather than Vi settings (much better!).

" This must be first, because it changes other options as a side effect.
set nocompatible

" No wrap please
set nowrap

" Switch syntax highlighting on
set syntax=on

" Theme
colorscheme w

" Show numbers on
set number

" Encoding
set encoding=utf-8

" Enable Highlight Search
set hlsearch

" Highlight while search
set incsearch

" Case Insensitivity Pattern Matching
set ignorecase

" Overrides ignorecase if pattern contains upcase
set smartcase

" Speed up scrolling in Vim
set ttyfast

" Highlight matching pairs of brackets. Use the '%' character to jump between them.
set matchpairs+=<:>

" List NFO properly
function! SetFileEncodings(encodings)
let b:myfileencodingsbak=&fileencodings
let &fileencodings=a:encodings
endfunction
function! RestoreFileEncodings()
let &fileencodings=b:myfileencodingsbak
unlet b:myfileencodingsbak
endfunction

" Make backspace behave in a sane manner.
set backspace=indent,eol,start

" Enable file type detection and do language-dependent indenting.
filetype plugin indent on

" Allow hidden buffers, don't limit to 1 file per window/split
set hidden

" Set relative number by default
" set relativenumber
" Home & End should be placed next to each other
nnoremap - $

" Move to beginning/end of line
nnoremap B ^
nnoremap E $

" Select all text - va is keycombo and ggVG is vim combo
nnoremap va ggVG

" Quick Save Without Quit
noremap ww :w!<CR>

"Delete to the end of line
nnoremap D d$

" Keep search results at the center of screen
nnoremap n nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz

" Shift to the next round tab stop.
set shiftround

" Set auto indent spacing.
set shiftwidth=2

" Saves the file (handling the permission-denied error)
noremap w!! w !sudo tee % >/dev/null

" Quickly quit editting without save
nnoremap Q :q!<CR>

" Quickly quit editting and save
nnoremap S  :x<CR>

" Quickly quit editting and save
nnoremap S  :x<CR>

" Add header for shell scripts
" au – means autocmd
" bufnewfile – event for opening a file that doesn’t exist for editing.
" *.sh – consider all files with .sh extension.
au BufNewFile *.sh 0r ~/.vim/headers/bash_header.sh
autocmd Bufwritepre,filewritepre *.sh exe "1," . 42 . "g/Modified:.*/s/Modified:.*/Modified: " .strftime("%H:%M:%S - %Y-%m-%d")
autocmd Bufwritepre,filewritepre *.sh exe "1," . 43 . "g/###########################################################################"

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" Jump to last line instead of -1
set virtualedit=onemore
nnoremap $ $l
nnoremap - dd

" Switch between tabs
set switchbuf=usetab
nnoremap <F8> :sbnext<CR>
nnoremap <S-F8> :sbprevious<CR>

" Close a vim window
autocmd FileType help noremap <buffer> q :q<cr>


" set textwidth=79
set formatoptions=tcqrn1
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set noshiftround

" Clear last vim search hilight
" Clear highlighting on escape in normal mode
nnoremap <esc> :noh<return><esc>
nnoremap <esc>^[ <esc>^[

map <F11> :set hls!<Bar>set hls?<CR>
map P     :set paste!<Bar>set paste?<CR>
map <F9>  :set wrap!<Bar>set wrap?<CR>


" ======= STATUS LINE =======
set statusline=
set statusline+=%#DiffAdd#%{(mode()=='n')?'\ \ NORMAL\ ':''}
set statusline+=%#DiffChange#%{(mode()=='i')?'\ \ INSERT\ ':''}
set statusline+=%#DiffDelete#%{(mode()=='r')?'\ \ RPLACE\ ':''}
set statusline+=%#Cursor#%{(mode()=='v')?'\ \ VISUAL\ ':''}
set statusline+=\ %n\           " buffer number
set statusline+=%#Visual#       " colour
set statusline+=%{&paste?'\ PASTE\ ':''}
set statusline+=%{&spell?'\ SPELL\ ':''}
set statusline+=%#CursorIM#     " colour
set statusline+=%R                        " readonly flag
set statusline+=%M                        " modified [+] flag
set statusline+=%#Cursor#               " colour
set statusline+=%#CursorLine#     " colour
set statusline+=\ %t\                   " short file name
set statusline+=%=                          " right align
set statusline+=%#CursorLine#   " colour
set statusline+=\ %Y\                   " file type
set statusline+=%#Cursor#       " colour
set laststatus=2
set statusline+=\ Line:\ %l\ of\ %L         
set statusline+=\ (%2p%%)\

" Add time by press F5
" Examples
" ---------------------------
" %c                         Thu 27 Sep 2007 07:37:42 AM EDT (depends on locale)
" %a %d %b %Y                Thu 27 Sep 2007
" %b %d, %Y                  Sep 27, 2007
" %d/%m/%y %H:%M:%S          27/09/07 07:36:32
" %H:%M:%S                   07:36:44
" %T                         07:38:09
" %m/%d/%y                   09/27/07
" %y%m%d                     070927
" %x %X (%Z)                 09/27/2007 08:00:59 AM (EDT)
" % Y-%m-%d                   2016-11-23
" %F                         2016-11-23 (works on some systems)

:inoremap <F5> <C-R>=strftime("%c")<CR>
":nnoremap <F5> "=strftime("%d/%m/%y %H:%M:%S")<CR>P
:nnoremap D "=strftime("%d/%m/%y %H:%M:%S")<CR>P

" Autoadd Shebang
augroup Shebang
  autocmd BufNewFile *.py 0put =\"#!/usr/bin/env python\<nl># -*- coding: iso-8859-15 -*-\<nl>\"|$
  autocmd BufNewFile *.rb 0put =\"#!/usr/bin/env ruby\<nl># -*- coding: None -*-\<nl>\"|$
  autocmd BufNewFile *.tex 0put =\"%&plain\<nl>\"|$
  autocmd BufNewFile *.\(cc\|hh\) 0put =\"//\<nl>// \".expand(\"<afile>:t\").\" -- \<nl>//\<nl>\"|2|start!
augroup END

" Write file and run it as bash
:map <F10> :w<CR>:!bash %<CR>  

" number of visual spaces per TAB
set tabstop=4 

" tabs are spaces
set expandtab    

" show command in bottom bar
set showcmd             

" load filetype-specific indent files
filetype indent on

" visual autocomplete for command menu
set wildmenu 

" highlight matching [{()}]
set showmatch           

" nnoremap <Left>  :echoe "Use h"<CR>
" nnoremap <Right> :echoe "Use l"<CR>
" nnoremap <Up>    :echoe "Use k"<CR>
" nnoremap <Down>  :echoe "Use j"<CR>

" Select all text
nnoremap vA ggVG

" Yank to end of line
nnoremap Y y$

noremap go lb"bPldwi <Esc>hbye
