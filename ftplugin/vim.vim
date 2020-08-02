" Doblar. Muy diferente de otros tipos de archivo --------- {{{
setlocal foldmethod=marker
setlocal foldenable
setlocal foldlevel=0
"}}}
setlocal keywordprg=:help

" Para que gf siga archivos, y para tener todo el vimruntime en la búsqueda
set path+=$HOME/.config/nvim/**

vnoremap <leader>f <ESC>'<A --------- {{{<ESC>'>o"}}}<ESC>

"Para búsquedas. Parecido a búsquedas en las notas
command! -nargs=1 Vrep vimgrep "<args>" $HOME/.config/nvim/** | copen
nnoremap <buffer> <leader>/ :Vrep<space>
