![logo](./logo/logo.png "logo")

- - - - -

Vagalume is the galician word for Firefly, and fireflies highlight in the
night with his ass, is not that so awesome? If you catch them in a jar, you have
an amazing and natural glowing lamp.

Well, is not that natural and it is not a jar, but I tried to catch the spirit of
the fireflies and use it to highlight your code in the cold nights and glow it
in the warm days. Almost it was the idea!

> Also the theme was inspired for great previous projects:

> - [Hemisu](https://github.com/noahfrederick/Hemisu) by Noah Frederick
> - [Harlequin](https://github.com/nielsmadan/harlequin) by Niels Madan
> - [Badwolf](https://github.com/sjl/badwolf) by Steve Losh
> - [Molokai](https://github.com/tomasr/molokai) by Tomas Restrepo
> - [GitHub](http://www.vim.org/scripts/script.php?script_id=2855) by Anthony Carapetis
> - [Summerfruit256](http://www.vim.org/scripts/script.php?script_id=2577) by Martin Baeuml
> - [Louver](http://www.vim.org/scripts/script.php?script_id=2360) by Kojo Sugita

# This is still a project, work in progress!

## Features

- Dual mode: one for the warm days (light theme) & one for the cold nights (dark theme)
- Made to work with GUIs (gui) and 256 color terminals (cterm)
- Provides a consistent style for the Vim interface (UI), the syntax for some
  filetypes and various plugins

## Supported filetypes

I intend to support the syntax highlighting for these filetypes:

- Python
- Django / Jinja
- Markdown
- Javascript & JSON
- HTML
- CSS
- Ruby
- C
- Lua
- Haskell
- Vimscript
- Clojure
- Git (commits, logs, diffs, ...)
- bash
- crontab

- and probably more...

## Installation

Just stick vagalume.vim in your `colors/` directory, or use your favorite plugin
manager to install it (NeoBundle, Vundle, pathogen, ...)

## Usage

To toggle the dark and light mode of the theme you have to set the `background`
in Vim with one of these commands:

    :set background=dark    "for the dark mode
    :set background=light   "for the light mode

At the same time you can set your favorite mode by default in your `.vimrc`
file:

    set bg=dark

And probably you should use a mapping to a function to do this more easy and
pleasant. You could put something like this in your `.vimrc` file:


    function! s:SwitchBackground()
        if &background == 'dark'
            set background=light
        elseif &background == 'light'
            set background=dark
        endif
    endfunction

    command! ToggleBackground call <SID>SwitchBackground()
    nnoremap <silent><Leader>B :ToggleBackground<CR>

### In the terminal

To show properly the 256 colors in terminal Vim, you should add this:

    set t_Co=256

And, of course, use a terminal with 256-colors support and a right `$TERM`
environment variable (something like `xterm-256color` or `screen-256color` under
Tmux)


## Screenshots

Soon! ... as the theme develops.
