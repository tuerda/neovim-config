set path+=$HOME/docs/notas/**
set nospell
setlocal suffixesadd+=.md

"Para búsquedas. Esto está robado del canal de youtube "nixcasts"
command! -nargs=1 Ngrep vimgrep "<args>" $HOME/docs/notas/**/*.mmd
nnoremap <buffer> <leader>/ :Ngrep<space>
