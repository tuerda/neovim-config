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

nnoremap <silent> <leader>r :set opfunc=aconsola#Mandaraladerecha<cr>g@
xnoremap <silent> <leader>r :<C-U>call aconsola#Mandaraladerecha("0")<CR>
nmap <silent> <leader>rr V<leader>r

"convertir 'and', 'or' y 'not' A sus equivalentes julianos
iab <buffer> and &
iab <buffer> or \|
iab <buffer> not ~

"Poner en minúsculas true y false porque así le gusta a julia.
iab <buffer> False false
iab <buffer> FALSE false
iab <buffer> True true
iab <buffer> TRUE true
