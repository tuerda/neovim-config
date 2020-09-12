"Colores construidos a mano
hi clear
set background=light
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "nicoclaro"

highlight Comment        ctermfg=236                                  guifg=#303030
highlight Constant       ctermfg=28                                   guifg=#008700
highlight Identifier     ctermfg=19                                   guifg=#0000af
highlight Statement      ctermfg=58                                   guifg=#5f5f00
highlight PreProc        ctermfg=54                                   guifg=#5f0087
highlight Type           ctermfg=23                                   guifg=#005f5f
highlight Special        ctermfg=89                                   guifg=#85005f
highlight Error          ctermbg=160                                  guibg=#d70000
highlight Todo           ctermbg=172                                  guibg=#d78700
highlight Directory      ctermfg=19                                   guifg=#0000af
highlight StatusLine     ctermfg=249     ctermbg=22    cterm=none     guifg=#b2b2b2    guibg=#005f00
highlight Search         ctermfg=16      ctermbg=227                  guifg=#000000    guibg=#ffff5f
highlight SpellBad       ctermfg=16      ctermbg=130                  guifg=#000000    guibg=#af5f00
highlight LineNr         ctermfg=249     ctermbg=22                   guifg=#005f00    guibg=#b2b2b2
highlight Visual         ctermfg=16      ctermbg=204                  guifg=#000000    guibg=#ff5f87
highlight Folded         ctermfg=234     ctermbg=244                  guifg=#1c1c1c    guibg=#808080
highlight Delimiter      ctermfg=130                                  guifg=#af005f
highlight CursorLineNr   ctermfg=22                                   guifg=#005f00
highlight NormalNC       ctermbg=247                                  guibg=#6c6c6c
highlight Normal         ctermfg=16      ctermbg=249                  guifg=#000000    guibg=#b2b2b2
highlight Number         ctermfg=125                                  guifg=#af005f
highlight MatchParen     ctermfg=16      ctermbg=215                  guifg=#000000    guibg=#ff8787
highlight Pmenu          ctermbg=240                                  guibg=#585858
highlight PmenuSel       ctermbg=82                                   guibg=#5fff00
highlight WildMenu       ctermbg=249                                  guibg=#b2b2b2

"Cambiar la apariencia de todo si estoy en modo insertar (un poco distinto por el esquema de color ) --------- {{{
augroup linea
    autocmd!
    autocmd InsertEnter * highlight CursorLine ctermbg=48     guibg=#00ff87
    autocmd InsertLeave * highlight CursorLine ctermbg=249    guibg=#b2b2b2
augroup END
"}}}
