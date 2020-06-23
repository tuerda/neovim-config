"Ortografía y guardar cada 2 segundos si no hago nada
setlocal iskeyword+=45
setlocal omnifunc=htmlcomplete#Complete
set updatetime=2000
set spell
augroup guardado
    autocmd!
    autocmd CursorHold,CursorHoldI * silent! wall
augroup END

"path
set path+=estilos/**
set path+=scripts/**

"Compile para compilar en surf AGUAS: solo en neovim.
"Como lo tengo configurado compila en surf.
command! Compile !nohup firefox -new-window % &
command! Html read ~/.vimsnips/htmldefault

"Para envolver
nnoremap <buffer> <leader><lt> yiwi<lt><esc>ea></><esc>hp
inoremap <buffer> <C-s> <esc>yiwi<lt><esc>ea></><esc>hpF>i
