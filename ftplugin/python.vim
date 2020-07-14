let g:python_recommended_style=0
" autocompletado modo omni para python
setlocal omnifunc=python3complete#Complete
set keywordprg=pydoc

"aguas: Solo en neovim
command! Run :vsplit | terminal python3

"path
setlocal path+=codigo/**
setlocal path+=..
setlocal path+=../codigo/**
setlocal path+=../../codigo/**
setlocal path+=obsoleto/**

nnoremap <buffer> <leader>R yyj<c-w>lpa<cr>
xnoremap <buffer> <leader>R y<c-w>lpa<cr>
inoremap <cr> <space><bs><cr>

iab pyinit def __init__ (self):<cr>
