setlocal comments=:#
setlocal commentstring=#%s

setlocal path+=codigo/**
setlocal path+=obsoleto/**
setlocal path+=..
setlocal path+=../codigo/**
setlocal path+=../obsoleto/**

"Solo en neovim o vim 8+
command! Run :vsplit | terminal julia

nnoremap <buffer> <leader>R yyj<c-w>lpa<cr>
xnoremap <buffer> <leader>R y<c-w>lpa<cr>

"convertir 'and', 'or' y 'not' A sus equivalentes julianos
iab and &
iab or \|
iab not ~
