
function! s:detectIrssiFile()
	let _dirname = expand('%:p:h:t')
	if _dirname == '.irssi' || _dirname == 'irssi'
		setfiletype irssi
	endif
endfunction

autocmd BufNewFile,BufRead config call s:detectIrssiFile()
