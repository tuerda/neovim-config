command! Run :vsplit | terminal scheme
nnoremap <silent><leader>r :set opfunc=aconsola#Mandaraladerecha<cr>g@
xnoremap <silent> <leader>r :<C-U>call aconsola#Mandaraladerecha("0")<CR>
nmap <silent> <leader>rr V<leader>r

iab false #f
iab False #f
iab FALSE #f
iab true #t
iab True #t
iab TRUE #t
