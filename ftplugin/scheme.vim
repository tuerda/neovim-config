command! Run :vsplit | terminal scheme
nnoremap <silent><leader>r :set opfunc=aconsola#Mandaraladerecha<cr>g@
xnoremap <silent> <leader>r :<C-U>call aconsola#Mandaraladerecha("0")<CR>
nmap <silent> <leader>rr V<leader>r

iab <buffer> false #f
iab <buffer> False #f
iab <buffer> FALSE #f
iab <buffer> true #t
iab <buffer> True #t
iab <buffer> TRUE #t
