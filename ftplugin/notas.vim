set path+=$HOME/docs/notas/**
setlocal suffixesadd+=.adoc

"Para búsquedas. Esto está robado del canal de youtube "nixcasts"
command! -nargs=1 Ngrep vimgrep "<args>" $HOME/docs/notas/**/*.adoc
nnoremap <buffer> <leader>/ :Ngrep<space>
