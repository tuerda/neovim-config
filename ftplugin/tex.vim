set breakindent
set foldmethod=manual "Doblar manualmente con zf<movimiento>

"Ortografía y guardar cada 2 segundos si no hago nada --------- {{{
set updatetime=2000
set spell
augroup guardado
    autocmd!
    autocmd CursorHold,CursorHoldI * silent! wall
augroup END
"}}}

"Para que cheque el contenido del texto escrito. Es raro que esto sea necesario.
syntax spell toplevel


"Path --------- {{{
set path+=paper/**
set path+=actual/**
set path+=*/paper/**
set path+=presentacion/**
set path+=*/presentacion/**
set path+=..
set path+=../presentacion/**
set path+=../paper/**

setlocal suffixesadd+=.bib
"}}}

"i$ y a$ para fórmulas (Imperfectas: No funcionan si estás sobre el símbolo de peso) --------- {{{
onoremap i$ :<C-u>normal! T$vt$<CR>
onoremap a$ :<C-u>normal! F$vf$<CR>
xnoremap i$ :<C-u>normal! T$vt$<CR>
xnoremap a$ :<C-u>normal! F$vf$<CR>
"}}}

"j y k se invierten con gj y gk solo para latex (no se lleva bien con relativenumber) --------- {{{
nnoremap <buffer> j gj
nnoremap <buffer> gj j
nnoremap <buffer> k gk
nnoremap <buffer> gk k

"}}}

"Compile para compilar en latexmk AGUAS: solo en neovim?.
"Como lo tengo configurado compila en pdflatex.
command! Compile 11 split | terminal latexmk %

"Para control de cambios estilo JAC. Incluye macros para agregar etiquetas de cambio --------- {{{
"Como a el le gustan.
command! Control filetype indent off |
            setlocal noautoindent nocindent nosmartindent |
            \ setlocal indentexpr=  |
            \ let @r='`>a}`<i\cutnk{' |
            \ let @a='`>a \kn <esc>`<i \kn ' |
"}}}

"Abreviaturas --------- {{{
iab lenumerate \begin{enumerate}<CR>\item{}<CR>\end{enumerate}<esc>k0f{a
iab litemize \begin{itemize}<CR>\item{}<CR>\end{itemize}<esc>k0f{a
iab lfigure \begin{figure}<CR>\begin{centering}<CR>\includegraphics{}<CR>\caption{}<CR>\label{}<CR>\end{centering}<CR>\end{figure}<esc>4k0f{a
iab lframe \begin{frame}<CR>\frametitle{}<CR>\framesubtitle{}<CR>\end{frame}<esc>2k0f{a
iab ldocument \begin{document}<CR>\end{document}<esc>ko
iab labstract \begin{abstract}<CR>\end{abstract}<esc>ko
iab ltabular \begin{tabular}{cc}<CR>&\\ <CR>\end{tabular}<esc>2k$T{i
iab lproof \begin{proof}<CR>\end{proof}<esc>ko
iab ltable \begin{table}<CR>\begin{tabular}{cc}<CR>\hline<CR>&\\ <CR>\hline<CR>\end{tabular}<CR>\caption{}<CR>\end{table}<esc>6k$T{i
iab larray \begin{array}{}<CR>\end{array}<esc>k$T{i
iab lcase \begin{case}<CR>\end{case}<esc>kA
iab lcenter \begin{center}<CR>\end{center}<esc>O
"}}}
