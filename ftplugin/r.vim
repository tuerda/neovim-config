colorscheme nicoclaro
setlocal omnifunc=syntaxcomplete#Complete
"Para abrir y cerrar corchetes donde los queremos
inoremap {<CR> {<CR>  <CR>}<up><right>

"aguas: Esto solo sirve con neovim y no con vim
command! Run :vsplit | terminal R
nnoremap <buffer> <leader>R :Aconsola<cr><c-w>li<cr>
xnoremap <buffer> <leader>R :Aconsola<cr><c-w>li<cr>
