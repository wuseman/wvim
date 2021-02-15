" Vim color file - w 

if version > 580
        hi clear
        if exists("syntax_on")
                syntax reset
        endif
endif

set t_Co=256
let g:colors_name = "wuseman"

"hi CTagsMember -- no settings --
"hi CTagsGlobalConstant -- no settings --
hi Normal guifg=#ff00ff guibg=#080808 guisp=#080808 gui=NONE ctermfg=white ctermbg=232 cterm=NONE
"hi CTagsImport -- no settings --
"hi CTagsGlobalVariable -- no settings --
"hi EnumerationValue -- no settings --
"hi Union -- no settings --
"hi VisualNOS -- no settings --
"hi EnumerationName -- no settings --
"hi Cursor -- no settings --
"hi DefinedName -- no settings --
"hi LocalVariable -- no settings --
"hi CTagsClass -- no settings --
"hi clear -- no settings --
"hi def -- no settings --

hi IncSearch guifg=#080808 guibg=#5f5fff guisp=#5f5fff gui=bold ctermfg=232 ctermbg=63 cterm=bold
hi WildMenu guifg=#080808 guibg=#00af5f guisp=#00af5f gui=bold ctermfg=232 ctermbg=35 cterm=bold
hi SignColumn guifg=#8787af guibg=#000000 guisp=#000000 gui=NONE ctermfg=103 ctermbg=236 cterm=NONE
hi SpecialComment guifg=#5fffff guibg=#000000 guisp=#000000 gui=NONE ctermfg=87 ctermbg=235 cterm=NONE
hi Typedef guifg=#5faf5f guibg=NONE guisp=NONE gui=bold ctermfg=71 ctermbg=NONE cterm=bold
hi Title guifg=#f200ff guibg=NONE guisp=NONE gui=bold ctermfg=201 ctermbg=NONE cterm=bold
hi Folded guifg=#af8700 guibg=#1c1c1c guisp=#1c1c1c gui=NONE ctermfg=136 ctermbg=234 cterm=NONE
hi PreCondit guifg=#00af87 guibg=NONE guisp=NONE gui=bold ctermfg=36 ctermbg=NONE cterm=bold
hi Include guifg=#00af87 guibg=NONE guisp=NONE gui=bold ctermfg=36 ctermbg=NONE cterm=bold
hi TabLineSel guifg=#dadada guibg=#585858 guisp=#585858 gui=NONE ctermfg=253 ctermbg=240 cterm=NONE
hi StatusLineNC guifg=#8787af guibg=#000000 guisp=#000000 gui=NONE ctermfg=103 ctermbg=236 cterm=NONE
hi NonText guifg=#626262 guibg=#121212 guisp=#121212 gui=bold ctermfg=241 ctermbg=233 cterm=bold
hi DiffText guifg=NONE guibg=#5f005f guisp=#5f005f gui=NONE ctermfg=NONE ctermbg=53 cterm=NONE
hi ErrorMsg guifg=#eeeeee guibg=#870000 guisp=#870000 gui=NONE ctermfg=255 ctermbg=88 cterm=NONE
hi Ignore guifg=#000000 guibg=NONE guisp=NONE gui=bold ctermfg=235 ctermbg=NONE cterm=bold
hi Debug guifg=#5fffff guibg=#000000 guisp=#000000 gui=NONE ctermfg=87 ctermbg=235 cterm=NONE
hi PMenuSbar guifg=NONE guibg=#0000af guisp=#0000af gui=NONE ctermfg=NONE ctermbg=19 cterm=NONE
hi Identifier guifg=#00ff1e guibg=NONE guisp=NONE gui=NONE ctermfg=10 ctermbg=NONE cterm=NONE
hi SpecialChar guifg=#5fffff guibg=#000000 guisp=#000000 gui=NONE ctermfg=87 ctermbg=235 cterm=NONE
hi Conditional guifg=#33ff00 guibg=NONE guisp=NONE gui=bold ctermfg=82 ctermbg=NONE cterm=bold
hi StorageClass guifg=#5faf5f guibg=NONE guisp=NONE gui=bold ctermfg=71 ctermbg=NONE cterm=bold
hi Todo guifg=#000000 guibg=#afaf5f guisp=#afaf5f gui=bold ctermfg=NONE ctermbg=143 cterm=bold
hi Special guifg=#ffffff guibg=#000000 guisp=#000000 gui=NONE ctermfg=15 ctermbg=235 cterm=NONE
hi LineNr guifg=#ffffff guibg=NONE guisp=NONE gui=NONE ctermfg=238 ctermbg=NONE cterm=NONE
hi StatusLine guifg=#ffffff guibg=#000000 guisp=#000000 gui=NONE ctermfg=15 ctermbg=236 cterm=NONE
hi Label guifg=#5f5fff guibg=NONE guisp=NONE gui=NONE ctermfg=63 ctermbg=NONE cterm=NONE
hi PMenuSel guifg=#87ffaf guibg=#005f87 guisp=#005f87 gui=NONE ctermfg=121 ctermbg=24 cterm=NONE
hi Search guifg=#080808 guibg=#00af87 guisp=#00af87 gui=NONE ctermfg=232 ctermbg=36 cterm=NONE
hi Delimiter guifg=#5fffff guibg=#000000 guisp=#000000 gui=NONE ctermfg=87 ctermbg=235 cterm=NONE
hi Statement guifg=#48ff00 guibg=NONE guisp=NONE gui=bold ctermfg=82 ctermbg=NONE cterm=bold
hi SpellRare guifg=NONE guibg=#870087 guisp=#870087 gui=NONE ctermfg=NONE ctermbg=90 cterm=NONE
hi Comment guifg=#b0b0b0 guibg=NONE guisp=NONE gui=NONE ctermfg=145 ctermbg=NONE cterm=NONE
hi Character guifg=#ffaf5f guibg=#000000 guisp=#000000 gui=NONE ctermfg=215 ctermbg=235 cterm=NONE
hi Float guifg=#00d75f guibg=NONE guisp=NONE gui=NONE ctermfg=41 ctermbg=NONE cterm=NONE
hi Number guifg=#00af00 guibg=NONE guisp=NONE gui=NONE ctermfg=34 ctermbg=NONE cterm=NONE
hi Boolean guifg=#5f5fff guibg=NONE guisp=NONE gui=bold ctermfg=63 ctermbg=NONE cterm=bold
hi Operator guifg=#ff00bb guibg=NONE guisp=NONE gui=NONE ctermfg=199 ctermbg=NONE cterm=NONE
hi CursorLine guifg=NONE guibg=#1c1c1c guisp=#1c1c1c gui=NONE ctermfg=NONE ctermbg=234 cterm=NONE
hi TabLineFill guifg=NONE guibg=#000000 guisp=#000000 gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE
hi Question guifg=#87ffaf guibg=NONE guisp=NONE gui=bold ctermfg=121 ctermbg=NONE cterm=bold
hi WarningMsg guifg=#eeeeee guibg=#5f5f00 guisp=#5f5f00 gui=NONE ctermfg=255 ctermbg=58 cterm=NONE
hi DiffDelete guifg=#5f5f00 guibg=#5f0000 guisp=#5f0000 gui=NONE ctermfg=58 ctermbg=52 cterm=NONE
hi ModeMsg guifg=#87afd7 guibg=NONE guisp=NONE gui=bold ctermfg=110 ctermbg=NONE cterm=bold
hi CursorColumn guifg=NONE guibg=#1c1c1c guisp=#1c1c1c gui=NONE ctermfg=NONE ctermbg=234 cterm=NONE
hi Define guifg=#00af87 guibg=NONE guisp=NONE gui=bold ctermfg=36 ctermbg=NONE cterm=bold
hi Function guifg=#00ff00 guibg=NONE guisp=NONE gui=NONE ctermfg=10 ctermbg=NONE cterm=NONE
hi FoldColumn guifg=#8787af guibg=#000000 guisp=#000000 gui=NONE ctermfg=103 ctermbg=236 cterm=NONE
hi PreProc guifg=#3dbd83 guibg=NONE guisp=NONE gui=bold ctermfg=72 ctermbg=NONE cterm=bold
hi Visual guifg=NONE guibg=#005f87 guisp=#005f87 gui=NONE ctermfg=gray ctermbg=blue cterm=NONE
hi MoreMsg guifg=#87ffaf guibg=NONE guisp=NONE gui=bold ctermfg=121 ctermbg=NONE cterm=bold
hi SpellCap guifg=NONE guibg=#000087 guisp=#000087 gui=NONE ctermfg=NONE ctermbg=18 cterm=NONE
hi VertSplit guifg=#8787af guibg=#000000 guisp=#000000 gui=NONE ctermfg=103 ctermbg=236 cterm=NONE
hi Exception guifg=#ffffff guibg=NONE guisp=NONE gui=bold ctermfg=15 ctermbg=NONE cterm=bold
hi Keyword guifg=#5faf5f guibg=NONE guisp=NONE gui=bold ctermfg=71 ctermbg=NONE cterm=bold
hi Type guifg=#00ff00 guibg=NONE guisp=NONE gui=bold ctermfg=10 ctermbg=NONE cterm=bold
hi DiffChange guifg=#000000 guibg=#5f5f00 guisp=#5f5f00 gui=NONE ctermfg=NONE ctermbg=58 cterm=NONE
hi SpellLocal guifg=NONE guibg=#008787 guisp=#008787 gui=NONE ctermfg=NONE ctermbg=30 cterm=NONE
hi Error guifg=#ffffff guibg=#5f0000 guisp=#5f0000 gui=bold ctermfg=15 ctermbg=52 cterm=bold
hi PMenu guifg=#87ffaf guibg=#00005f guisp=#00005f gui=NONE ctermfg=121 ctermbg=17 cterm=NONE
hi SpecialKey guifg=#5fd75f guibg=NONE guisp=NONE gui=NONE ctermfg=77 ctermbg=NONE cterm=NONE
hi Constant guifg=#ffffff guibg=NONE guisp=NONE gui=NONE ctermfg=15 ctermbg=NONE cterm=NONE
hi Tag guifg=#5fffff guibg=#000000 guisp=#000000 gui=NONE ctermfg=87 ctermbg=235 cterm=NONE
hi String guifg=#ffffff guibg=#000000 guisp=#000000 gui=NONE ctermfg=15 ctermbg=235 cterm=NONE
hi PMenuThumb guifg=NONE guibg=#00afaf guisp=#00afaf gui=NONE ctermfg=NONE ctermbg=37 cterm=NONE
hi MatchParen guifg=NONE guibg=#005f87 guisp=#005f87 gui=bold ctermfg=NONE ctermbg=24 cterm=bold
hi Repeat guifg=#5faf5f guibg=NONE guisp=NONE gui=bold ctermfg=71 ctermbg=NONE cterm=bold
hi SpellBad guifg=NONE guibg=#870000 guisp=#870000 gui=NONE ctermfg=NONE ctermbg=88 cterm=NONE
hi Directory guifg=#8787ff guibg=NONE guisp=NONE gui=NONE ctermfg=105 ctermbg=NONE cterm=NONE
hi Structure guifg=#5faf5f guibg=NONE guisp=NONE gui=bold ctermfg=71 ctermbg=NONE cterm=bold
hi Macro guifg=#00af87 guibg=NONE guisp=NONE gui=bold ctermfg=36 ctermbg=NONE cterm=bold
hi Underlined guifg=#ffff5f guibg=NONE guisp=NONE gui=underline ctermfg=227 ctermbg=NONE cterm=underline
hi DiffAdd guifg=NONE guibg=#000087 guisp=#000087 gui=NONE ctermfg=NONE ctermbg=18 cterm=NONE
hi TabLine guifg=#afafaf guibg=#000000 guisp=#000000 gui=NONE ctermfg=145 ctermbg=236 cterm=NONE
hi cursorim guifg=#ffffff guibg=#e000b0 guisp=#e000b0 gui=NONE ctermfg=15 ctermbg=163 cterm=NONE
hi lcursor guifg=NONE guibg=#00ffff guisp=#00ffff gui=NONE ctermfg=NONE ctermbg=14 cterm=NONE
hi menu guifg=#fff8dc guibg=#233b5a guisp=#233b5a gui=NONE ctermfg=230 ctermbg=17 cterm=NONE
hi scrollbar guifg=NONE guibg=#233b5a guisp=#233b5a gui=NONE ctermfg=NONE ctermbg=17 cterm=NONE
hi user2 guifg=#585858 guibg=#000000 guisp=#000000 gui=NONE ctermfg=240 ctermbg=236 cterm=NONE
hi rubyglobalvariable guifg=#5f8700 guibg=NONE guisp=NONE gui=NONE ctermfg=64 ctermbg=NONE cterm=NONE
hi operatorcurlybrackets guifg=#5fafff guibg=NONE guisp=NONE gui=bold ctermfg=75 ctermbg=NONE cterm=bold
hi rubypredefinedidentifier guifg=#5f8700 guibg=NONE guisp=NONE gui=bold ctermfg=64 ctermbg=NONE cterm=bold
hi user1 guifg=#ffd7af guibg=#000000 guisp=#000000 gui=bold ctermfg=223 ctermbg=236 cterm=bold
