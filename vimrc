" File              : .vimrc
" Author            : wuseman <wuseman@nr1.nu>
" Date              : 23.04.2019
" Last Modified Date: 23.04.2019
" Last Modified By  : wuseman <wuseman@nr1.nu>
" Use Vim settings, rather than Vi settings (much better!).

" This must be first, because it changes other options as a side effect.
set nocompatible

" No wrap please
set nowrap

" Switch syntax highlighting on
set syntax=on

" Theme
"colorscheme wtheme
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
au BufNewFile *.sh 0r ~/.vim/headers/bash_header.sh

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif

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




