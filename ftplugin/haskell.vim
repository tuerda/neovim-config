command! Run :vsplit | terminal ghci
nnoremap <leader>R :w<cr><c-w>li:l <c-\><c-n>:put #<cr>a
"Para todas las excentricidades de indentación
setlocal virtualedit=all
    

"Para alinear y tabular
function! Tabalignorcomplete()
    let linea=strpart(getline('.'),-1,col('.')) "linea actual hasta el cursor
    let palabra=matchstr(linea,"[^ \s]*$") "palabra actual
    if (col('.')==1)
        return "\<tab>"
    elseif (strlen(palabra)==0)
        return "\<esc>klwji"
    elseif (match(palabra,'\/') != -1) "habrá alguna / por ahí?
        return "\<C-X>\<C-F>"
    else
        return "\<C-P>"
    endif
endfunction


iunmap <tab>
inoremap <expr> <tab> Tabalignorcomplete()
