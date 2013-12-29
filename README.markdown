# vim-litecorrect

> Lightweight auto-correction for Vim

We type `teh` when we meant to type `the`. This plugin is to help us catch
the most common of these typos and correct each upon hitting the space bar
(or non-keyword character.)

Features of this plugin:

* Focused on the most common of typos that we make
* Uses Vim’s `iabbrev`
* Buffer-scoped behavior
* User-extendable

Note that this plugin is not a replacement for teh spell checker in Vim.

The default typos and their corrections are stored in a global dictionary:

  ```
  let g:litecorrect#defaults =
        \{'I'    : ['i'],
        \ 'The'  : ['TEh', 'Teh'],
        \ 'that' : ['htat'],
        \ 'the'  : ['hte', 'teh'],
        \ 'this' : ['htis'],
        \ 'then' : ['tehn'],
        \ 'what' : ['waht'],
        \}
  ```

Note that the corrections are stored as key-value entries where the value
is a list of the common misspellings for the key.

## Requirements

May require a recent version of Vim.

## Installation

Install using Pathogen, Vundle, Neobundle, or your favorite Vim package
manager.

## Configuration

Because you may not want auto-corrections in all file types you edit, you can
configure this plugin per file type. For example, to enable litecorrect support
in `markdown` and `textile` files, place in your `.vimrc`:

  ```vim
  augroup litecorrect
    autocmd!
    autocmd FileType markdown call litecorrect#init()
    autocmd FileType textile call litecorrect#init()
  augroup END
  ```

Alternatively, you can build on the defaults by providing your own corrections:

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

The corrections you provide will be in addition to those in those in
`g:litecorrect#defaults`. Where there’s a conflict, your correction will
prevail.

## Criteria to add to defaults

Suggestions for adding to the defaults are welcome, but good evidence is
needed that they are common typos.

## Related

For a more comprehensive approach, check out
[vim-autocorrect](https://github.com/panozzaj/vim-autocorrect).

## See also

If you like this plugin, you may like these other ones from the same author:

* [vim-quotable](http://github.com/reedes/vim-quotable) - extends Vim to
  support typographic (‘curly’) quotes
* [vim-writer](http://github.com/reedes/vim-writer) - Extending Vim to better
  support writing prose and documentation

## Future development

If you have any ideas on improving this plugin, please post them to the github
project issue page.

<!-- vim: set tw=74 :-->
