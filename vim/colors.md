# How to override the color scheme?
[solution](https://gist.github.com/romainl/379904f91fa40533175dfaec4c833f2f)

The raw gist:
# The right way to override any highlighting if you don't want to edit the colorscheme file directly

## Generalities first

Suppose you have weird taste and you *absolutely* want:

* your visual selection to always have a green background and black foreground,
* your active statusline to always have a white background and red foreground,
* your very own deep blue background.

Your first reflex is probably to put those lines somewhere in your `vimrc`:

    highlight Visual cterm=NONE ctermbg=76 ctermfg=16 gui=NONE guibg=#5fd700 guifg=#000000
    highlight StatusLine cterm=NONE ctermbg=231 ctermfg=160 gui=NONE guibg=#ffffff guifg=#d70000
    highlight Normal cterm=NONE ctermbg=17 gui=NONE guibg=#00005f
    highlight NonText cterm=NONE ctermbg=17 gui=NONE guibg=#00005f

But it quickly appears that those lines have no effect if you source a colorscheme later in your `vimrc` so you move them below that `colorscheme` command:

    colorscheme foobar

    highlight Visual cterm=NONE ctermbg=76 ctermfg=16 gui=NONE guibg=#5fd700 guifg=#000000
    highlight StatusLine cterm=NONE ctermbg=231 ctermfg=160 gui=NONE guibg=#ffffff guifg=#d70000
    highlight Normal cterm=NONE ctermbg=17 gui=NONE guibg=#00005f
    highlight NonText cterm=NONE ctermbg=17 gui=NONE guibg=#00005f

which gives the desired outcome. Everything is fine. In principle.

But you like to try new colorschemes, or you prefer to have different colorschemes for different filetypes or time of the day, and your overrides don't carry over when you change your colorscheme.

This is because colorschemes usually reset all highlighting, including your own, when they are sourced.

The solution is to override the desired highlights in an autocommand that's executed whenever any colorscheme is sourced:

    augroup MyColors
        autocmd!
        autocmd ColorScheme * highlight Visual cterm=NONE ctermbg=76 ctermfg=16 gui=NONE guibg=#5fd700 guifg=#000000
                          \ | highlight StatusLine cterm=NONE ctermbg=231 ctermfg=160 gui=NONE guibg=#ffffff guifg=#d70000
                          \ | highlight Normal cterm=NONE ctermbg=17 gui=NONE guibg=#00005f
                          \ | highlight NonText cterm=NONE ctermbg=17 gui=NONE guibg=#00005f
    augroup END

    colorscheme foobar

Note that the autocommand will have no effect on previously sourced colorschemes so it must be added *before* any colorscheme is sourced.

Of course, we can go one step further and put all our highlights in a neat little function for maximum readability/managability/maintainability:

    function! MyHighlights() abort
        highlight Visual     cterm=NONE ctermbg=76  ctermfg=16  gui=NONE guibg=#5fd700 guifg=#000000
        highlight StatusLine cterm=NONE ctermbg=231 ctermfg=160 gui=NONE guibg=#ffffff guifg=#d70000
        highlight Normal     cterm=NONE ctermbg=17              gui=NONE guibg=#00005f
        highlight NonText    cterm=NONE ctermbg=17              gui=NONE guibg=#00005f
    endfunction

    augroup MyColors
        autocmd!
        autocmd ColorScheme * call MyHighlights()
    augroup END

    colorscheme foobar

## But I only want that override for a single colorscheme

The autocommands above use the glob `*` in order to override *any* colorscheme. If, say… you really like the colorscheme `foobar` but you can't stand its `Visual` highlight, you will want your autocommand to target that colorscheme specifically. To this end, you can use the name of that colorscheme instead of `*`:

    autocommand ColorScheme foobar call MyHighlight()

or, if you want to target several colorschemes:

    autocommand ColorScheme foobar,barbaz call MyHighlight()

## But this doesn't work when I "auto-source" my `vimrc`

This won't work if you have an autocommand like the following in your `vimrc` because autocommands don't nest by default:

    [...]
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
    [...]

By default, autocommands don't trigger other autocommands. In this classic example, an autocommand is set to `:source $MYVIMRC` automatically when you write it. The problem, here, is that you are very likely to have a line like this one somewhere in your `vimrc`:

    colorscheme whatever

which, when it is executed as part of the re-sourcing of your vimrc, won't trigger the `ColorScheme` autocommand because of that "no nesting" rule.

The solution is to add the `nested` keyword to that autocommand to allow other autocommands to be triggered by that event:

    [...]
    autocmd BufWritePost $MYVIMRC nested source $MYVIMRC
    [...]

## Reference

For all things concerning autocommands, see the aptly named `:help autocommands`. For all things concerning syntax highlighting, see `:help syntax`.

---

[My Vim-related 
gists](https://gist.github.com/romainl/4b9f139d2a8694612b924322de1025ce).
