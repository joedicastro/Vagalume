![logo](./logo/logo.png "logo")

- - - - -

Vagalume is the galician word for Firefly, and fireflies highlight in the
night with his ass, is not that so awesome? If you catch them in a jar, you have
an amazing and natural glowing lamp.

Well, is not that natural and it is not a jar, but I tried to catch the spirit of
the fireflies and use it to highlight your code in the cold nights and glow it
in the warm days. Almost it was the idea!

> Also the theme was inspired by some great previous projects:

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
- Vim help
- Clojure
- Git (commits, logs, diffs, ...)
- bash
- crontab
- Scala
- XML
- PHP

- and probably more...

## Supported plugins

- Vimdiff
- Fugitive

- and probably more...

## Installation

Just stick vagalume.vim in your `colors/` directory, or use your favorite plugin
manager to install it (NeoBundle, Vundle, pathogen, ...)

## Usage

To toggle the dark and light mode of the theme you have to set the `background`
in Vim with one of these commands:

```VimL
:set background=dark    "for the dark mode
:set background=light   "for the light mode
```

At the same time you can set your favorite mode and this theme by default in
your `.vimrc` file:

```VimL
if has("gui_running") && &t_Co >= 256
    syntax on
    set bg=dark         " or the light mode if you want
    colorscheme vagalume
endif
```

And probably you should use a mapping to a function to do this more easy and
pleasant. You could put something like this in your `.vimrc` file:


```VimL
function! s:SwitchBackground()
    if &background == 'dark'
        set background=light
    elseif &background == 'light'
        set background=dark
    endif
endfunction

command! ToggleBackground call <SID>SwitchBackground()
nnoremap <silent><Leader>B :ToggleBackground<CR>
```

### In the terminal

To show properly the 256 colors in terminal Vim, you should add this:

```VimL
set t_Co=256
```

And, of course, use a terminal with 256-colors support and a right `$TERM`
environment variable (something like `xterm-256color` or `screen-256color` under
Tmux)


## Screenshots

Soon! ... as the theme develops.

## Contributions

Contributions are very welcome! But you have to understand that not all of them
would be accepted, a colorscheme is something so subjetive and personal that if
I wouldn't be unsatisfied with the other zillion alternatives, you can be sure
that I didn't spend so fucking time in doing another one by myself. Fortunately,
we don't all have the same taste.

And please, if you're going to send a pull request that you want me to merge,
please post a comment in it with before/after screenshots! Thanks!

## Progression

- [X] Get bored of alternatives colorschemes!
- [X] Get crazy and start a new one...
- [X] Find a name not already used
- [X] Create a repo
- [X] Choose a License (MIT)
- [X] Draw by hand some sketches for the logo
- [X] Create a vectorial logo with Inkscape
- [X] Create a not so boring README
- [X] Understand how Vim highlighting works!
- [X] Take two decisions: 
  - [X] Only GUI and 256 terminal colors will be supported (for my sanity)
  - [X] Make a theme with dual mode for light & dark backgrounds
- [X] Create the colorscheme file
- [X] Create the essential mechanics to define the palette and the colors for
  the two modes
- [X] Create a function to easy define groups for both modes
- [ ] Create a palette
- [ ] Create the dark mode first:
    - [ ] Create the essential vim UI groups
    - [ ] Create the essential vim syntax groups
    - [ ] Create the first filetype syntax: Python
    - [ ] Create the syntax for the rest of filetypes:
      - [ ] Markdown
      - [ ] ...
    - [ ] Create the diffvim groups
    - [ ] Create the first plugin groups: Fugitive
    - [ ] Create the rest of the plugin groups:
        - [ ] Unite 
        - [ ] ... 
- [ ] Create the light mode 
- [ ] Try to be consistent, simple and elegant without forget pragmatic
- [ ] Take a quality revision
- [ ] Try to not get crazy in the middle
- [ ] Find the Meaning of Life and a better answer for All than `42` 
- [ ] <strike>Become a fucking Billionare!</strike> Girls, booze and cars all
  the time? Noh, what a cliché, where is the fun? :smile:
