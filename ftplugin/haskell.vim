command! Run :vsplit | terminal ghci

"mandar selección visual a la consola
xnoremap <buffer> <leader>r :w! temporal.hs<cr><c-w>li:l temporal.hs<cr>
"mandar todo a la consola
nnoremap <buffer> <leader>r :w! temporal.hs<cr><c-w>li:l temporal.hs<cr>

iab and &&
iab or \|\|
