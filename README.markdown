# vim-litecorrect

> Lightweight auto-correction for Vim

We type `teh` when we meant to type `the`. This plugin is to help us catch
the most common of these typos and correct each upon hitting the space bar
(or non-keyword character.)

Features of this plugin:

* Focused on the most common of typos that we make
* Uses Vim’s `iabbrev`
* Buffer-scoped behavior
* User-extensible 
* Limited to a maximum of 500 `iabbrev`s for quick load (currently at ~450)

Note that this plugin is not intended to be a replacement for teh spell
checker in Vim. It’s best used with spell-check enabled.

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
  " standard vim command to enable loading the plugin files 
  " (and their indent support) for specific file types.
  " It may already be in your .vimrc!
  filetype plugin indent on

  augroup litecorrect
    autocmd!
    autocmd FileType markdown call litecorrect#init()
    autocmd FileType textile call litecorrect#init()
  augroup END
  ```

Alternatively, you can build on the defaults by providing your own
corrections. Note that the corrections are stored as key-value entries
where the value is a list of the common misspellings for the key.

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

## Criteria to add to defaults

Suggestions for adding to the defaults are welcome, but good evidence is
needed that they are common typos.

Short words are preferable to long words to avoid the list becoming too
large and slow to load.

Note that existing `iabbrev`s may be removed to make way for new ones, to
keep within the stated limit.

## Related

For a more comprehensive approach with support for many more words, check
out:

* [vim-autocorrect](https://github.com/panozzaj/vim-autocorrect)
* [wordlist.vim](https://github.com/vim-scripts/wordlist.vim)

## See also

If you find this plugin useful, you may want to check out these others by
[@reedes][re]:

* [vim-colors-pencil][cp] - color scheme for Vim inspired by IA Writer
* [vim-lexical][lx] - building on Vim’s spell-check and thesaurus/dictionary completion
* [vim-pencil][pn] - rethinking Vim as a tool for writers
* [vim-quotable][qu] - extends Vim to support typographic (‘curly’) quotes
* [vim-thematic][th] - modify Vim’s appearance to suit your task and environment 
* [vim-wordy][wo] - uncovering usage problems in writing 

[re]: http://github.com/reedes
[cp]: http://github.com/reedes/vim-colors-pencil
[lx]: http://github.com/reedes/vim-lexical
[pn]: http://github.com/reedes/vim-pencil
[qu]: http://github.com/reedes/vim-quotable
[th]: http://github.com/reedes/vim-thematic
[wo]: http://github.com/reedes/vim-wordy

## Future development

If you’ve spotted a problem or have an idea on improving this plugin,
please post it to the github project issue page.

