![logo](./logo/logo.png "logo")

Vagalume is the galician word for Firefly, and fireflies highlight in the
night with his ass, is not that so awesome? If you catch them in a jar, you have
an amazing and natural glowing lamp.

Well, is not that natural and it is not a jar, but I tried to catch the spirit of
the fireflies and use it to highlight your code in the cold nights and glow it
in the warm days. Almost it was the idea!

> Also the theme was inspired by some great previous projects:

> - [Hemisu][hms] by Noah Frederick
> - [Harlequin][hlq] by Niels Madan
> - [Badwolf][bwf] by Steve Losh
> - [Molokai][mki] by Tomas Restrepo
> - [GitHub][ghb] by Anthony Carapetis
> - [Summerfruit256][sft] by Martin Baeuml
> - [Louver][lvr] by Kojo Sugita
> - [Solarized][slr] by Ethan Schoonover
> - [Jellybeans][jlb] by Nanotech
> - [Vividchalk][vck] by Tim Pope
> - [Base16][b16] by Chris Kempson
> - [Mustang][mtg] by Henrique C. Alves

  [hms]: https://github.com/noahfrederick/Hemisu
  [hlq]: https://github.com/nielsmadan/harlequin
  [bwf]: https://github.com/sjl/badwolf
  [mki]: https://github.com/tomasr/molokai
  [ghb]: http://www.vim.org/scripts/script.php?script_id=2855
  [sft]: http://www.vim.org/scripts/script.php?script_id=2577
  [lvr]: http://www.vim.org/scripts/script.php?script_id=2360
  [slr]: https://github.com/altercation/vim-colors-solarized
  [jlb]: https://github.com/nanotech/jellybeans.vim
  [vck]: https://github.com/tpope/vim-vividchalk
  [b16]: https://github.com/chriskempson/base16-vim
  [mtg]: http://hcalves.deviantart.com/art/Mustang-Vim-Colorscheme-98974484


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

- [x] Get bored of alternatives colorschemes!
- [x] Get crazy and start a new one...
- [x] Find a name not already used
- [x] Create a repo
- [x] Choose a License (MIT)
- [x] Draw by hand some sketches for the logo
- [x] Create a vectorial logo with Inkscape
- [x] Create a not so boring README
- [x] Understand how Vim highlighting works!
- [x] Take two decisions:
  - [x] Only GUI and 256 terminal colors will be supported (for my sanity)
  - [x] Make a theme with dual mode for light & dark backgrounds
- [x] Create the colorscheme file
- [x] Create the essential mechanics to define the palette and the colors for
  the two modes
- [x] Create a function to easy define groups for both modes
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
- [ ] <del>Become a fucking Billionare!</del> Girls, booze and cars all
  the time? Noh, what a cliché, where is the fun? :smile:
