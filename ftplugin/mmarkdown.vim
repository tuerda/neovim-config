set path+=$HOME/docs/notas/**
setlocal suffixesadd+=.mmd
setlocal foldmethod=manual

"Para búsquedas. Esto está robado del canal de youtube "nixcasts"
command! -nargs=1 Ngrep vimgrep "<args>" $HOME/docs/notas/**/*.mmd
nnoremap <buffer> <leader>/ :Ngrep<space>

"Para dar formato a tablas
command! -range Tabla <line1>,<line2>s /|/§|/g | <line1>,<line2>!column -s § -t
