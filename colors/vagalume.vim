"                                        _
"                __   ____ _  __ _  __ _| |_   _ _ __ ___   ___
"                \ \ / / _` |/ _` |/ _` | | | | | '_ ` _ \ / _ \
"                 \ V / (_| | (_| | (_| | | |_| | | | | | |  __/
"                  \_/ \__,_|\__, |\__,_|_|\__,_|_| |_| |_|\___|
"                            |___/
"
"
"===============================================================================
" Vagalume is the galician word for Firefly, and fireflies highlight in the
" night with his ass, is not that so awesome? If you catch them in a jar, you have
" an amazing and natural glowing lamp. 

" Well, is not that natural and it is not a jar, but I tried to catch the spirit of
" the fireflies and use it to highlight your code in the cold nights and glow it
" in the warm days. Almost it was the idea!
"===============================================================================
" Author: joe di castro (joe@joedicastro.com) <http://joedicastro.com/>
" Last Change: 16-07-2013
" Repository: http://github.com/joedicastro/Vagalume
"===============================================================================

" Mechanics
" Reset Syntax Highlighting {{{

hi clear
if exists("syntax_on")
    syntax reset
endif

" }}}
" Only for GUI and 256 colors terminals {{{

if !has("gui_running") && &t_Co < 256
    finish
endif

" }}}
" Let's get a name! {{{

let colors_name = "vagalume"

" }}}
" Palette {{{

let s:palette = {}

let s:palette.pureblack =   ['#000000', 16]
let s:palette.black     =   ['#080808', 232]
let s:palette.white     =   ['#C0C0C0', 7]

" }}}
" Define theme colors by background {{{

let s:colors = {}

if &background == "dark"
    " Dark theme
    let s:colors.background = s:palette.pureblack
    let s:colors.foreground = s:palette.white
else
    " Light theme
    let s:colors.background = s:palette.white
    let s:colors.foreground = s:palette.pureblack
endif

" }}}
" Highlighting function {{{

function! s:Highlight(group, fg, bg, style, curl)
	execute "highlight" a:group
		\ "guifg="   (!empty(a:fg)       ? get(s:colors, a:fg)[0]      : "NONE")
		\ "guibg="   (!empty(a:bg)       ? get(s:colors, a:bg)[0]      : "NONE")
		\ "guisp="   (!empty(a:curl)     ? get(s:colors, a:curl)[0]    : "NONE")
		\ "gui="     (!empty(a:style)    ? a:style                     : "NONE")
		\ "ctermfg=" (!empty(a:fg)       ? get(s:colors, a:fg)[1]      : "NONE")
		\ "ctermbg=" (!empty(a:bg)       ? get(s:colors, a:bg)[1]      : "NONE")
		\ "cterm="   (!empty(a:style)    ? a:style                     : "NONE")
endfunction

" }}}

" ColorScheme
" Vanilla Vim {{{

call s:Highlight('vimLineComment', 'foreground', 'background', 'bold', '')

" }}}

