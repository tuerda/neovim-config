"Para enviar cosas a un REPL
command! -range Aconsola <line1>,<line2>yank | wincmd l | put | call feedkeys("i\<cr>")
command! Aconsolav exe "normal! `<v`>y" | wincmd l | put | call feedkeys("i\<cr>")
command! Aconsolac exe "normal! `[v`]y" | wincmd l | put | call feedkeys("i\<cr>")
"}}}

function! aconsola#Mandaraladerecha(type, ...)
    if a:type=="0" " Modo visual
        exe "Aconsolav"
    elseif a:type == 'line'
        exe "'[,']Aconsola"
    else
        exe "Aconsolac"
    endif
endfunction
