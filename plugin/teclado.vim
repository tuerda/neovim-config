augroup tecladoingles
    autocmd!
    autocmd InsertLeave * silent! !setxkbmap -option caps:escape us
augroup end

command! Espanol setlocal spelllang=es | autocmd InsertEnter * <buffer> !setxkbmap -option caps:escape latam
