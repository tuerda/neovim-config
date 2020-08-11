"Tipo de archivo para presentar diapositivas en texto plano
"No sé si alguna vez lo use

"para ascii art esto ayuda mucho
set virtualedit=all

"Ocultar todo
set nonumber
set norelativenumber
set laststatus=0

"Fondo opaco
colorscheme nicoopaco

"Enlaces con gf, ocultando la extensión
set suffixesadd+=.slide

"abrir siguiente slide y anterior usando las flechas
nnoremap <left> :bprevious<cr>
nnoremap <right> :bnext<cr>
