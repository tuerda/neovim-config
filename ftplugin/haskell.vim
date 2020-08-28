command! Run :vsplit | terminal ghci

"mandar selección visual a la consola
xnoremap <buffer> <leader>r :w! temporal.hs<cr><c-w>li:l temporal.hs<cr>
"mandar todo a la consola
nnoremap <buffer> <leader>r :w<cr><c-w>li:l <c-\><c-n>:put #<cr>i<cr>
