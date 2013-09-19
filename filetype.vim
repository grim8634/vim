au BufNewFile,BufRead *.tt call s:AdjustTT2Type()

func! s:AdjustTT2Type()
    setf tt2html
endfunc 
