"=============================================================================
" Name Of File: vimfortune.vim
"  Description: Vim Plugin to display tips
"   Maintainer: key at lexpress dot net
"  Last Change:.
"      Version: 0.1.1
"        Usage: Normally, this file should reside in the plugins
"		'fortune' should be available, along with vimtips and
"		vimtips.dat installed in the appropriate directory.
"
"		Once installed, vim will show you one random tip when
"		launching vim w/o specifying file(s) to edit.
"		
"		You can also see a tip by typing
"		:TIPS
"
"         TODO: auto-update and auto-reformat vimtips.txt from vim.sf.net

"!fortune vimtips

command! -nargs=? TIPS :call <SID>VimFortune(<q-args>)

function! s:VimFortune(...)
  if a:0 > 0 && a:1 != ''
    let filename = a:1
  else
    let filename = "vimtips"
  endif
  echo system("fortune " . filename)
endfunction

" 'splash' only when no arguments are specified
if argc() == 0
  autocmd VimEnter * call s:VimFortune()
endif

" vim:set ts=8 sts=2 sw=2 tw=0 nowrap:
