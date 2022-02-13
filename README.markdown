# vim-litecorrect

> Lightweight auto-correction for Vim

We type `teh` when we meant to type `the`. This plugin is to help us catch
the most common of these typos and correct each upon hitting the space bar
(or non-keyword character.)

Features of this plugin:

* Focused on the most common of typos
* Pure Vimscript using the efficient `iabbrev`
* Included auto-correct entries limited to 350 (in 2016) to ensure fast
  loading (see expansion policy below)
* Buffer-scoped behavior (won’t touch global settings)

Note that this plugin is not intended to be a replacement for the spell
checker in Vim. It’s best used with spell-check enabled.

## Expansion policy

Since it was created in 2013, _litecorrect_ has limited the number of
default auto-correct entries (such as `teh`->`the`) to 300, avoiding the
excessive load times of comparable plugins and focusing on the most common
of typos.

Meanwhile, the adoption of new disk technologies reduces the penalty we
pay when initializing plugins. This provides _litecorrect_ an opportunity
to grow while not significantly impacting load-time performance.

Henceforth, _litecorrect_ will expand by up to 50 entries each year. For
2016 it will grow to 350 entries. For 2017, 400 entries, and so on.

## Requirements

May require a recent version of Vim.

## Installation

You can install _litecorrect_ using a Vim package manager, such as
[Vundle][vnd], [Plug][plg], or [Pathogen][pth]. If you are using a recent
verion of vim or neovim, you can also install using native package support.
(See [:help packages][packages].)

[vnd]: https://github.com/gmarik/Vundle.vim
[plg]: https://github.com/junegunn/vim-plug
[pth]: https://github.com/tpope/vim-pathogen
[packages]: https://vimhelp.org/repeat.txt.html#packages

## Configuration

Because you may not want auto-corrections in all file types you edit, you can
configure this plugin per file type. For example, to enable litecorrect support
in `markdown` and `textile` files, place in your `.vimrc`:

  ```vim
  set nocompatible
  filetype plugin on       " may already be in your .vimrc

  augroup litecorrect
    autocmd!
    autocmd FileType markdown,mkd call litecorrect#init()
    autocmd FileType textile call litecorrect#init()
  augroup END
  ```

Optionally, you can build on the defaults by providing your own corrections.
Note that the corrections are stored as key-value entries where the value is
a list of the common misspellings for the key.

  ```
  let user_dict = {
    \ 'maybe': ['mabye'],
    \ 'medieval': ['medival', 'mediaeval', 'medevil'],
    \ 'then': ['hten'],
    \ }
  augroup litecorrect
    autocmd!
    autocmd FileType markdown call litecorrect#init(user_dict)
    autocmd FileType textile call litecorrect#init(user_dict)
  augroup END
  ```

The corrections you provide will be in addition to the defaults. Where
there’s a conflict, your correction will prevail.

### Correct previous misspelling

To augment _litecorrect_ you may find the following key mapping useful.
It forces the top-ranked correction on the first misspelled word
before the cursor.

Add to your `.vimrc` with a key mapping of your choice:

```vim
nnoremap <C-s> [s1z=<c-o>
inoremap <C-s> <c-g>u<Esc>[s1z=`]A<c-g>u
```

It generates a fresh undo point prior to the correction so
that you can conveniently undo if necessary.

Note that _litecorrect_ does not map any keys.

### Typographic characters

By default, straight quotes will be used in corrections. For example:

```
Im -> I'm
shouldnt -> shouldn't
thats -> that's
```

If you prefer typographic (“curly”) quotes, install an educating quote plugin
like [vim-textobj-quote][qu] that will automatically transform straight quotes
to curly ones in your typing, including your corrections. For example:

```
I'm -> I’m
shouldn't -> shouldn’t
that's -> that’s
```

## Criteria to add (or modify) default entries

Note that the number of default entries will be limited for fast loading. See
policy above.

Suggestions for improving the defaults are welcome, but good evidence is needed
that a suggested auto-correct entry adds value to the list.

## Related projects

If load time performance isn’t an issue, you can seek a more comprehensive
approach:

* [wordlist.vim](https://github.com/vim-scripts/wordlist.vim) - nearly 800 entries
* [vim-autocorrect](https://github.com/panozzaj/vim-autocorrect) - over 12K entries!

An alternative that builds on [tpope/vim-abolish][va]:

* [vim-correction](https://github.com/jdelkins/vim-correction) - approx. 700 entries

[va]: https://github.com/tpope/vim-abolish

## See also

If you find this plugin useful, you may want to check out these others
originally by [@reedes][re]:

* [vim-colors-pencil][cp] - color scheme for Vim inspired by IA Writer
* [vim-lexical][lx] - building on Vim’s spell-check and thesaurus/dictionary completion
* [vim-pencil][pn] - rethinking Vim as a tool for writers
* [vim-textobj-quote][qu] - extends Vim to support typographic (‘curly’) quotes
* [vim-textobj-sentence][ts] - improving on Vim's native sentence motion command
* [vim-thematic][th] - modify Vim’s appearance to suit your task and environment
* [vim-wheel][wh] - screen-anchored cursor movement for Vim
* [vim-wordy][wo] - uncovering usage problems in writing
* [vim-wordchipper][wc] - power tool for shredding text in Insert mode

[re]: https://github.com/reedes
[cp]: https://github.com/preservim/vim-colors-pencil
[lx]: https://github.com/preservim/vim-lexical
[vo]: https://github.com/preservim/vim-one
[pn]: https://github.com/preservim/vim-pencil
[ts]: https://github.com/preservim/vim-textobj-sentence
[qu]: https://github.com/preservim/vim-textobj-quote
[th]: https://github.com/preservim/vim-thematic
[wh]: https://github.com/preservim/vim-wheel
[wo]: https://github.com/preservim/vim-wordy
[wc]: https://github.com/preservim/vim-wordchipper

## Future development

If you’ve spotted a problem or have an idea on improving this plugin,
please post it to the [GitHub project issue page][issues].

[issues]: https://github.com/preservim/vim-litecorrect/issues
