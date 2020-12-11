command! Run :vsplit | terminal ghci
compiler ghc
setlocal makeprg=ghc\ --make\ %

"mandar selección visual a la consola
xnoremap <buffer> <leader>r :w! temporal.hs<cr><c-w>li:l temporal.hs<cr>
"mandar todo a la consola
nnoremap <buffer> <leader>r :w<cr><c-w>li:l <c-\><c-n>:put #<cr>i<cr>

"Poner mayúsculas y minúsculas a True y False como le gusta a haskell
iab false False
iab FALSE False
iab true True
iab TRUE True
