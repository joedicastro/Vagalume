"                                        _                      
"                __   ____ _  __ _  __ _| |_   _ _ __ ___   ___ 
"                \ \ / / _` |/ _` |/ _` | | | | | '_ ` _ \ / _ \
"                 \ V / (_| | (_| | (_| | | |_| | | | | | |  __/
"                  \_/ \__,_|\__, |\__,_|_|\__,_|_| |_| |_|\___|
"                            |___/                              
"
"===============================================================================
" Author: joe di castro (joe@joedicastro.com) <http://joedicastro.com/>
" Last Change: 16-07-2013
" Repository: http://github.com/joedicastro/Vagalume 
"===============================================================================

" Reset Syntax Highlighting {{{

set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif

" }}}

" Only for GUI and 256 colors terminals {{{

if !has("gui_running") || &t_co < 256
    finish
endif

" }}}

" Let's get a name! {{{

let colors_name = "vagalume"

" }}}


