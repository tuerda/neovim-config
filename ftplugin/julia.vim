setlocal comments=:#
setlocal commentstring=#%s

setlocal path+=codigo/**
setlocal path+=obsoleto/**
setlocal path+=..
setlocal path+=../codigo/**
setlocal path+=../obsoleto/**

"Solo en neovim
command! Run :vsplit | terminal julia

"Indentación
setlocal foldmethod=syntax

nnoremap <buffer> <leader>R :Aconsola<cr><c-w>li<cr>
xnoremap <buffer> <leader>R :Aconsola<cr><c-w>li<cr>

"convertir 'and', 'or' y 'not' A sus equivalentes julianos
iab and &
iab or \|
iab not ~
