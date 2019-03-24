" 行末スペースを削除
" Version: 1.0
" Author: AUTHOR NAME <AUTHOR@MAIL>
" License: VIM LICENSE

" 多重ロード防止
" 慣習的にg:loaded_{plugin-name} とするのが一般的
if exists('g:loaded_{plugin-name}')
  finish
endif
let g:loaded_{plugin-name} = 1

" 副作用の回避
let s:save_cpo = &cpo
set cpo&vim

" 処理の呼び出し
command! -bar Sample call {plugin-name}#sample()

let &cpo = s:save_cpo
unlet s:save_cpo
