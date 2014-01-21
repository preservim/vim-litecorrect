# vim-litecorrect

> Lightweight auto-correction for Vim

We type `teh` when we meant to type `the`. This plugin is to help us catch
the most common of these typos and correct each upon hitting the space bar
(or non-keyword character.)

Features of this plugin:

* Focused on the most common of typos
* Pure Vimscript where mechanism is `iabbrev`
* Included entries limited to a maximum of 300 for fast loading
* Buffer-scoped behavior

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

## Criteria to modify defaults

Note that the number of default entries will be limited to 300 for fast
loading.

Suggestions for improving the defaults are welcome, but good evidence is
needed that a suggested typo is more common than one we will drop.

## Related projects

For a more comprehensive approach with support for _many_ more words,
check out:

* [wordlist.vim](https://github.com/vim-scripts/wordlist.vim) - 800+ entries
* [vim-autocorrect](https://github.com/panozzaj/vim-autocorrect) - 12K+ entries!

A warning that larger entry counts make for slower loading.

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

