colorscheme nicoclaro
setlocal omnifunc=syntaxcomplete#Complete
"Para abrir y cerrar corchetes donde los queremos
inoremap {<CR> {<CR>  <CR>}<up><right>

"aguas: Esto solo sirve con neovim y no con vim
command! Run :vsplit | terminal R
nnoremap <silent> <leader>r :set opfunc=aconsola#Mandaraladerecha<cr>g@
xnoremap <silent> <leader>r :<C-U>call aconsola#Mandaraladerecha("0")<CR>
nmap <silent> <leader>rr V<leader>r

" xnoremap <buffer> <leader>R :w! temporal.R<cr><c-w>lisource("temporal.R",echo=TRUE) <cr>

" Corregir true y false automáticamente a mayúsuclas porque así le gusta a R
iab true TRUE
iab True TRUE
iab false FALSE
iab False FALSE
