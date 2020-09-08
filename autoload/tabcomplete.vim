function! tabcomplete#Complete()
    let linea=strpart(getline('.'),-1,col('.')) "linea actual hasta el cursor
    let palabra=matchstr(linea,"[^ \s]*$") "palabra actual
    if (match(palabra,'\/') != -1) "habrá alguna / por ahí?
        return "\<C-X>\<C-F>"
    elseif strlen(palabra)==0
        return "\<tab>"
    else
        return "\<C-P>"
    endif
endfunction
