" A handful of utils to help easily tweak a vim colorscheme
" Modified: 20-07-2013
" Author: joe di castro <joe@joedicastro.com>
" License: MIT

" this command toggle the background between `light` and `dark`
command ToggleBackground        :call functions#TogBG()

" this command reveals the syntax groups stack for the word under the cursor
command ShowSyntaxStack         :call functions#SynStack()

" this command shows the current highlighting settings, useful for tests
command ShowHighLightingGroups  :silen sp +source\ $VIMRUNTIME/syntax/hitest.vim


