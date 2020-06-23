"Colores construidos a mano
hi clear
set background=dark
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "concentracion"

highlight Comment        ctermfg=240
highlight Constant       ctermfg=240
highlight Identifier     ctermfg=240
highlight Statement      ctermfg=240
highlight PreProc        ctermfg=240
highlight Type           ctermfg=240
highlight Special        ctermfg=240
highlight Error          ctermbg=240
highlight Todo           ctermbg=240
highlight Directory      ctermfg=240
highlight StatusLine     ctermfg=240     ctermbg=233   cterm=none
highlight Search         ctermfg=240     ctermbg=233
highlight SpellBad       ctermfg=248     ctermbg=232
highlight LineNr         ctermfg=235     ctermbg=235
highlight Visual         ctermfg=16      ctermbg=247
highlight Folded         ctermfg=234     ctermbg=244
highlight Delimiter      ctermfg=240
highlight CursorLine     ctermbg=239     ctermbg=235   cterm=underline
highlight Normal         ctermfg=248     ctermbg=235
highlight Number         ctermfg=240
highlight MatchParen     ctermfg=240     ctermbg=237
highlight Pmenu          ctermbg=240
highlight WildMenu       ctermbg=178
highlight foldcolumn     ctermbg=none

set nonumber
set norelativenumber
set noruler
set laststatus=0
set linebreak
set scrolloff=99
set foldcolumn=5

"Cambiar la apariencia de todo si estoy en modo insertar (un poco distinto por el esquema de color ) --------- {{{
augroup linea
    autocmd!
    autocmd InsertEnter * highlight CursorLine ctermbg=236
    autocmd InsertLeave * highlight CursorLine ctermbg=234
augroup END
"}}}
