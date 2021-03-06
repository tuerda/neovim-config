"Cosas que van al inicio --------- {{{
filetype plugin indent on
runtime macros/matchit.vim "Le da muchos más poderes a %
"let loaded_gzip=1
"runtime ftplugin/man.vim
set encoding=utf-8
set ff=unix
set fileencoding=utf-8
set mouse=a
set backspace=indent,eol,start "que el backspace jale
set hidden
set noautoread
set confirm
set autochdir
set clipboard=unnamedplus

"Hacer que vim trate todos los números como decimales, tengan o no un cero en frente
set nrformats-=octal

"}}}

"Menús --------- {{{
set wildmenu
set wildmode=longest,full
"}}}

"Autocompletado --------- {{{
set completeopt=longest,menuone "Completa de manera más intuitiva
setlocal omnifunc=syntaxcomplete#Complete
"set complete-=i "Hace que no busque entre todos los archivos incluídos Esto puede ahorrar recursos a veces
""}}}

"Marcar información extra --------- {{{
"General --------- {{{
set cursorline
set showcmd
set number
set relativenumber
" }}}

"números absolutos para ventanas que no están activas: --------- {{{
augroup linenr
    autocmd!
    autocmd WinEnter * setlocal relativenumber
    autocmd WinLeave * setlocal norelativenumber
augroup END
"}}}

"Abrir el quickfix automáticamente --------- {{{
augroup quickfix
    autocmd!
    autocmd QuickFixCmdPost [^l]* nested cwindow
    autocmd QuickFixCmdPost l* nested lwindow
augroup END
"}}}

"Línea de estado --------- {{{
set laststatus=2
set statusline=%f\ \ %y%m%r%h%w%=[%l,%v]\ \ \ \ \ \ [%L,%p%%]\ %n
"}}}
"}}}

"Sintaxis --------- {{{
syntax enable
set showmatch
"}}}

"Búsqueda --------- {{{
set hlsearch
set incsearch

"mayúsculas y minúsculas en la búsqueda
set ignorecase
set smartcase

"Expresiones regulares: usar todo por default
set magic
"}}}

"Ajustes gráficos --------- {{{
set lazyredraw
set title
colorscheme nicotrans
set scrolloff=3
set display+=lastline
set linebreak
set wrap
set splitbelow
set splitright
"}}}

"Indentación --------- {{{
set autoindent
set expandtab
set shiftwidth=4
set softtabstop=4
set shiftround
set smarttab

"F2 para pegar sin meterse con indentación
set pastetoggle=<F2>
"}}}

"Historial --------- {{{
set undolevels=500
set history=500
"}}}

"Doblar código --------- {{{
"para vimscript se hace diferente
set foldmethod=indent
"que no doble nada por default y que al empezar a doblar solo agarre dobleces anidados 20 veces (y el actual)
set foldlevel=20
set nofoldenable
"}}}

"Remaps  --------- {{{
"Que w!! guarde archivos cuando vim no se abrió con sudo
cnoremap w!! w !sudo tee % > /dev/null

"que <leader> sea espacio,
nnoremap <SPACE> <Nop>
let mapleader=" "

" Mover un bloque visual  --------- {{{
xnoremap <silent> <m-down> :m '>+1<CR>gv=gv
xnoremap <silent> <m-up> :m '<-2<CR>gv=gv
xnoremap <silent> <m-right> <Esc>`<<C-v>`>odp`<<C-v>`>lol
xnoremap <silent> <m-left> <Esc>`<<C-v>`>odhP`<<C-v>`>hoh
"}}}

"dmenu para algunos snippets y macros.
nnoremap <leader>m :r !cat ~/.config/nvim/vimsnips//`ls ~/.config/nvim/vimsnips <bar> dmenu`<CR>0"pd$@p

"alt espacio para dar un espacio sin expandir una abreviación.
inoremap <m-space> <c-v><space>

"control L para borrar búsquedas marcadas
nnoremap <silent> <C-L> :nohlsearch<CR><C-L>

"Q en modo normal para ejecutar la linea actual y poner la salida en el buffer (para modo ex usar gQ"
nnoremap Q !!sh<CR>

"\ para insertar un único caracter
nnoremap \ i_<esc>r

"armar tags
nnoremap <leader>t :!ctags -R<CR><CR>

"para editar y cargar mi vimrc
nnoremap <leader>ev :tabedit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

"espacio u para poner en mayúscula todas las primeras letras de palabras en una linea o selección visual: --------- {{{
"Tal vez esto se pueda convertir en un operador para mayor flexibilidad, pero habría que pensar como operar sobre lineas incompletas.
xnoremap <leader>u :<c-u>keeppatterns s/\%V\<./\u&/g<CR>
nnoremap <leader>u :keeppatterns s/\<./\u&/g<CR>
"}}}

"Objetos --------- {{{
"para operar sobre la última inserción "an insertion"
xnoremap ai `]o`[
onoremap ai :<C-U>normal! `[v`]<CR>

"para operar sobre todo un buffer "in everything"
xnoremap ie GoggV
onoremap ie :<C-U>normal! GVgg<CR>

"para operar sobre una línea (sin el salto de línea) "in line"
onoremap il :<C-u>normal! 0v$<CR>
"}}}

"Terminal --------- {{{
"Solo si es neovim; vim no entiende esto: Para salir de modo insertar en el emulador de terminal
tnoremap <esc> <c-\><c-n>
"Y para enviarle un <esc> al programa de terminal
tnoremap <c-v><esc> <esc>

"Solo en neovim. Control W sale de modo terminal y hace lo que haría si fuera
"modo normal
tnoremap <c-w> <c-\><c-n><c-w>
"}}}

"Seguridad, para pegar desde onternet.
inoremap  <C-r>+  <C-r><C-r>+
inoremap  <C-r>*  <C-r><C-r>* 

"Movimientos largos más intuitivos --------- {{{
nnoremap <leader>h ^
onoremap <leader>h ^
nnoremap <leader>l $
onoremap <leader>l $
nnoremap <leader>k {
onoremap <leader>k {
nnoremap <leader>j }
onoremap <leader>j }
"}}}

"Para saltar rápido entre buffers. Mapping robado de internet y modificado un poco.
nnoremap <leader>b :ls<CR>:b<Space>

"Modo sin distracciones
nnoremap <leader>D :colorscheme concentracion <cr>

"Tab para autocompletar. Esta función está en autoload/tabcomplete.vim
inoremap <expr> <Tab> tabcomplete#Complete()

"* y # en modo visual están en el archivo plugin/vsetsearch.vim

"Comandos --------- {{{
"Para dividir una oración por linea
command! -range Oraciones keeppatterns <line1>,<line2> s/\. /\.\r/g
"}}}

"Para hacer un diff con el archivo original
command! DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
	 	\ | wincmd p | diffthis

"Para plugins --------- {{{

"Los plugins se cargan solos de pack/plugins/start
"Para agregar plugins opcionales de pack/plugins/opt, usar packadd

"Ahora cargo surround, commentary, y los textobjs: user, between

"""""""""""""""""""""""""""""""""""""""""""""

"Para archivos gpg se carga en plugin/gpg.vim

"Para netrw --------- {{{
let g:netrw_banner = 0 "Mata el banner
let g:netrw_liststyle = 3 "Vista de árbol
"}}}
"}}}
