" A handful of utils to help easily tweak a vim colorscheme
" Modified: 20-07-2013
" Author: joe di castro <joe@joedicastro.com>
" License: MIT

" Function to toggle the Background between dark and light. Borrowed from
" Solarized by Ethan Schoonover (MIT Licensed)
function! functions#TogBG()
    let &background = ( &background == "dark"? "light" : "dark" )
    if exists("g:colors_name")
        exe "colorscheme " . g:colors_name
    endif
endfunction

" This function will show you the syntax groups for the word under the cursor.
" Borrowed form Easel by Niels Madan (MIT Licensed)
function! functions#SynStack()
    if !exists("*synstack")
        return
    endif
    let sgroup_list = map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
    echo sgroup_list
    let @s = join(sgroup_list, ' ')
endfunc




