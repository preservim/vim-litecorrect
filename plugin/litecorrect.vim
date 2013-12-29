" ============================================================================
" File:        litecorrect.vim
" Description: vim-litecorrect plugin
" Maintainer:  Reed Esau <github.com/reedes>
" Last Change: December 29, 2013
" License:     The MIT License (MIT)
" ============================================================================

scriptencoding utf-8

if exists('g:loaded_litecorrect') || &cp | finish | endif
let g:loaded_litecorrect = 1

" Save 'cpoptions' and set Vim default to enable line continuations.
let s:save_cpo = &cpo
set cpo&vim

" a dictionary of the most common of typos
let g:litecorrect#defaults =
      \{'I'    : ['i'],
      \ 'The'  : ['TEh', 'Teh'],
      \ 'that' : ['htat'],
      \ 'the'  : ['hte', 'teh'],
      \ 'this' : ['htis'],
      \ 'then' : ['tehn'],
      \ 'what' : ['waht'],
      \}

function! litecorrect#init(...)
  let l:user_dict = a:0 ? a:1 : {}
  for l:dict in [ g:litecorrect#defaults, l:user_dict ]
    for l:item in items( l:dict )
      let l:fixed = l:item[0]
      for l:subitem in l:item[1]
        execute 'ia <buffer> ' . l:subitem . ' ' . l:fixed
      endfor
    endfor
  endfor
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
" vim:ts=2:sw=2:sts=2
