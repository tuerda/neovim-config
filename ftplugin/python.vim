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

nnoremap <buffer> <leader>R :Aconsola<cr><c-w>li<cr>
xnoremap <buffer> <leader>R :Aconsola<cr><c-w>li<cr>

iab pyinit def __init__ (self):<cr>
