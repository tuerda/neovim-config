augroup tecladoingles
    autocmd!
    autocmd InsertLeave * silent! !setxkbmap -option caps:escape us
augroup end

command! Espanol setlocal spelllang=es | autocmd InsertEnter <buffer> set keymap=nicolat | inoremap <m-;> <esc>:set keymap= <cr>a;<esc>:set keymap=nicolat<cr>a
