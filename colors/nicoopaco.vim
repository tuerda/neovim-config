"Colores construidos a mano
hi clear
set background=dark
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "nico"

highlight Comment        ctermfg=242     guifg=#6c6c6c
highlight Constant       ctermfg=167     guifg=#d75f5f
highlight Identifier     ctermfg=33      guifg=#0087ff
highlight Statement      ctermfg=94      guifg=#875f00
highlight PreProc        ctermfg=67      guifg=#5f87af
highlight Type           ctermfg=29      guifg=#00875f
highlight Special        ctermfg=129     guifg=#af00ff
highlight Error          ctermbg=124     guibg=#af0000
highlight Todo           ctermbg=172     guibg=#d78700
highlight Directory      ctermfg=28      guifg=#008700
highlight StatusLine     ctermfg=178     ctermbg=18    cterm=none     guifg=#d7af00    guibg=#000087
highlight Search         ctermfg=16      ctermbg=166                  guifg=#000000    guibg=#d75f00
highlight SpellBad       ctermfg=16      ctermbg=52                   guifg=#000000    guibg=#5f0000
highlight LineNr         ctermfg=250     ctermbg=236                  guifg=#bcbcbc    guibg=#303030
highlight Visual         ctermfg=16      ctermbg=247                  guifg=#000000    guibg=#9e9e9e
highlight Folded         ctermfg=234     ctermbg=244                  guifg=#1c1c1c    guibg=#808080
highlight Delimiter      ctermfg=125     guifg=#af005f
highlight CursorLine     ctermbg=235                   cterm=none     guibg=#262626
highlight CursorLineNr   ctermfg=250     guifg=#bcbcbc
highlight Normal         ctermfg=252     ctermbg=233                  guifg=#d0d0d0    guibg=#121212
highlight Number         ctermfg=170     guifg=#d75fd7
highlight MatchParen     ctermfg=233     ctermbg=245                  guifg=#121212    guibg=#808080
highlight Pmenu          ctermbg=240     guibg=#585858
highlight WildMenu       ctermbg=178     guibg=#d7af00

"Cambiar la apariencia de todo si estoy en modo insertar (un poco distinto por el esquema de color ) --------- {{{
augroup linea
    autocmd!
    autocmd InsertEnter * highlight CursorLine ctermbg=53     guibg=#5f005f
    autocmd InsertLeave * highlight CursorLine ctermbg=235    guibg=#262626
augroup END
"}}}
