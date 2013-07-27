"
"                __     __                _
"                \ \   / /_ _  __ _  __ _| |_   _ _ __ ___   ___
"                 \ \ / / _` |/ _` |/ _` | | | | | '_ ` _ \ / _ \
"                  \ V / (_| | (_| | (_| | | |_| | | | | | |  __/
"                   \_/ \__,_|\__, |\__,_|_|\__,_|_| |_| |_|\___|
"                             |___/
"
"===============================================================================
" Vagalume is the galician word for Firefly, and fireflies highlight in the
" night with his ass, is not that so awesome? If you catch them in a jar, you
" have an amazing and natural glowing lamp.

" Well, is not that natural and it is not a jar, but I tried to catch the spirit
" of the fireflies and use it to highlight your code in the cold nights and glow
" it in the warm days. Almost it was the idea!
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

let s:palette.pureblack     =   ['#000000', 16]
let s:palette.purewhite     =   ['#FFFFFF', 15]
let s:palette.black         =   ['#080808', 232]
let s:palette.white         =   ['#EEEEEE', 255]

" }}}
" Define theme colors by background {{{

let s:colors = {}

if &background == "dark"
    " Dark theme
    let s:colors.background = s:palette.pureblack
    let s:colors.foreground = s:palette.white
else
    " Light theme
    let s:colors.background = s:palette.purewhite
    let s:colors.foreground = s:palette.black
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
" UI {{{

" Normal        normal text
call s:Highlight('Normal', 'foreground', 'background', '', '')

" Misc {{{

" ColorColumn   used for the columns set with 'colorcolumn'

" Conceal       placeholder characters substituted for concealed text

" Directory	    directory names (and other special names in listings)

" VertSplit	    the column separating vertically split windows

" Folded		line used for closed folds


" MatchParen	The character under the cursor or just before it, if it is a
" paired bracket, and its match

" Question	    hit-enter prompt and yes/no questions

" Title		titles for output from ":set all", ":autocmd" etc.


" }}}
" NonText {{{

" NonText		'~' and '@' at the end of the window, characters from
" 'showbreak' and other characters that do not really exist in the text (e.g.,
" ">" displayed when a double-wide character doesn't fit at the end of the
" line).

" SpecialKey	Meta and special keys listed with ":map", also for text used to
" show unprintable characters in the text, 'listchars'.  Generally: text that is
" displayed differently from what it really is.

" }}}
" Messages {{{

" ErrorMsg	    error messages on the command line

" ModeMsg		'showmode' message (e.g., "-- INSERT --")

" MoreMsg		more-prompt

" WarningMsg	warning messages

" }}}
" Search {{{

" Search		Last search pattern highlighting (see 'hlsearch').  Also used
" for highlighting the current line in the quickfix window and similar items
" that need to stand out.

" IncSearch	    'incsearch' highlighting; also used for the text replaced with
" ":s///c"

" }}}
" Visual selection {{{

" Visual		Visual mode selection

" VisualNOS	Visual mode selection when vim is "Not Owning the Selection".

" }}}
" Completion menus {{{

" Pmenu		    Popup menu: normal item.
" PmenuSel	    Popup menu: selected item.
" PmenuSbar	    Popup menu: scrollbar.
" PmenuThumb	Popup menu: Thumb of the scrollbar.

" WildMenu	current match in 'wildmenu' completion

" }}}
" Tabs {{{

" TabLine		tab pages line, not active tab page label

" TabLineFill	tab pages line, where there are no labels

" TabLineSel	tab pages line, active tab page label

" }}}
" Gutter {{{

" SignColumn	column where signs are displayed

" FoldColumn	'foldcolumn'
" LineNr		Line number for ":number" and ":#" commands, and when 'number'
" or 'relativenumber' option is set.

" CursorLineNr	Like LineNr when 'cursorline' or 'relativenumber' is set for the
" cursor line.

" }}}
" Cursor {{{

" Cursor		the character under the cursor
" vCursor		the character under the cursor
" iCursor		the character under the cursor

" CursorIM	    like Cursor, but used when in IME mode
" CursorColumn	the screen column that the cursor is in if 'cursorcolumn' is set
" CursorLine    the screen line that the cursor is in when 'cursorline' is set

" }}}
" Status line {{{

" StatusLine	status line of current window

" StatusLineNC	status lines of not-current windows Note: if this is equal to
" "StatusLine" Vim will use "^^^" in the status line of the current window.

" User1 highlight for the statusline
" User2 highlight for the statusline
" User3 highlight for the statusline
" User4 highlight for the statusline
" User5 highlight for the statusline
" User6 highlight for the statusline
" User7 highlight for the statusline
" User8 highlight for the statusline
" User9 highlight for the statusline


" }}}
" Only for GUI {{{

" Menu		Current font, background and foreground colors of the menus.  Also
" used for the toolbar.  Applicable highlight arguments: font, guibg, guifg.

" Scrollbar	Current background and foreground of the main window's scrollbars.
" Applicable highlight arguments: guibg, guifg.

" Tooltip		Current font, background and foreground of the tooltips.
" Applicable highlight arguments: font, guibg, guifg.

" }}}
" Diff mode {{{

" DiffAdd		diff mode: Added line
" DiffChange	diff mode: Changed line
" DiffDelete	diff mode: Deleted line
" DiffText	    diff mode: Changed text within a changed line

" TODO: add more diff entries in $VIMRUNTIME/syntax/diff.vim ?

" }}}
" Spelling {{{

" SpellBad	    Word that is not recognized by the spellchecker. spell This will be
" combined with the highlighting used otherwise.

" SpellCap	    Word that should start with a capital. spell This will be combined
" with the highlighting used otherwise.

" SpellLocal	Word that is recognized by the spellchecker as one that is used
" in another region. spell This will be combined with the highlighting used
" otherwise.

" SpellRare	    Word that is recognized by the spellchecker as one that is hardly
" ever used. spell This will be combined with the highlighting used otherwise.

" }}}
" }}}
" Generic Syntax {{{

" *Comment	any comment

" *Constant	any constant
"  String		a string constant: "this is a string"
"  Character	a character constant: 'c', '\n'
"  Number		a number constant: 234, 0xff
"  Boolean	a boolean constant: TRUE, false
"  Float		a floating point constant: 2.3e10


" *Identifier	any variable name
"  Function	function name (also: methods for classes)

" *Statement	any statement
"  Conditional	if, then, else, endif, switch, etc.
"  Repeat		for, do, while, etc.
"  Label		case, default, etc.
"  Operator	"sizeof", "+", "*", etc.
"  Keyword	any other keyword
"  Exception	try, catch, throw

" *PreProc	generic Preprocessor
"  Include	preprocessor #include
"  Define		preprocessor #define
"  Macro		same as Define
"  PreCondit	preprocessor #if, #else, #endif, etc.

" *Type		int, long, char, etc.
"  StorageClass	static, register, volatile, etc.
"  Structure	struct, union, enum, etc.
"  Typedef	A typedef

" *Special	any special symbol
"  SpecialChar	special character in a constant
"  Tag		you can use CTRL-] on this
"  Delimiter	character that needs attention
"  SpecialComment	special things inside a comment
"  Debug		debugging statements

" *Underlined	text that stands out, HTML links

" *Ignore		left blank, hidden  |hl-Ignore|

" *Error		any erroneous construct

" *Todo		anything that needs extra attention; mostly the
" 		keywords TODO FIXME and XXX




" }}}
" Help {{{

" Subtitle
" helpHeadline
" helpSectionDelim
" helpExample
" helpHyperTextJump
" helpHyperTextEntry
" helpBar
" helpBacktick
" helpNotVi
" helpStar
" helpNormal
" helpVim
" helpOption
" helpCommand
" helpHeader
" helpIgnore
" helpNote
" helpSpecial
" helpLeadBlank
" helpURL
" helpComment
" helpConstant
" helpString
" helpCharacter
" helpNumber
" helpBoolean
" helpFloat
" helpIdentifier
" helpFunction
" helpStatement
" helpConditional
" helpRepeat
" helpLabel
" helpOperator
" helpKeyword
" helpException
" helpPreProc
" helpInclude
" helpDefine
" helpMacro
" helpPreCondit
" helpType
" helpStorageClass
" helpStructure
" helpTypedef
" helpSpecial
" helpSpecialChar
" helpTag
" helpDelimiter
" helpSpecialComment
" helpDebug
" helpUnderlined
" helpError
" helpTodo

" }}}
" }}}

" Remove Highlighting function {{{

delf s:Highlight

" }}}
" Remove Palette and Colors {{{

unlet s:palette
unlet s:colors

" }}}


