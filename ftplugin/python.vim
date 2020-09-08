let g:python_recommended_style=0
" autocompletado modo omni para python
set keywordprg=pydoc

"aguas: Solo en neovim
command! Run :vsplit | terminal python3

"path
setlocal path+=codigo/**
setlocal path+=..
setlocal path+=../codigo/**
setlocal path+=../../codigo/**
setlocal path+=obsoleto/**

nnoremap <silent> <leader>r :set opfunc=aconsola#Mandaraladerecha<cr>g@
xnoremap <silent> <leader>r :<C-U>call aconsola#Mandaraladerecha("0")<CR>
nmap <silent> <leader>rr V<leader>r

iab pyinit def __init__ (self):<cr>

" Poner en mayúsculas la primera letra de true y false porque así le gust a python.
iab false False
iab FALSE False
iab true True
iab TRUE True

" xnoremap <buffer> <leader>R :w! temporal.py<cr><c-w>liexec(open("temporal.py").read()) <cr>
