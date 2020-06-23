" Para autocompletado totalmente automático se puede hacer
set completeopt=noinsert,menuone

function! Automaticcomplete()
    let linea=strpart(getline('.'),-1,col('.')) " linea actual hasta el cursor
    let palabra=matchstr(linea,"[^ \s]*$") " palabra actual
    if strlen(palabra)>=2 && !pumvisible()
        call feedkeys("\<C-X>\<C-P>")
    endif
endfunction

augroup autocompletado
    autocmd!
    autocmd InsertCharPre * call Automaticcomplete()
augroup end
