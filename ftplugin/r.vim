colorscheme nicoopaco
setlocal omnifunc=syntaxcomplete#Complete
"Para abrir y cerrar corchetes donde los queremos
inoremap {<CR> {<CR>  <CR>}<up><right>

setlocal omnifunc=syntaxcomplete#Complete
"aguas: Esto solo sirve con neovim y no con vim
command! Run :vsplit | terminal R
nnoremap <buffer>  <leader>R yyj<c-w>lpa
xnoremap <buffer> <leader>R y<c-w>lpa
