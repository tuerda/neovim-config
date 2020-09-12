"Colores modificados a mano; basados en esquema pablo
hi clear
set background=dark
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "nicotrans"

highlight Comment        ctermfg=244                                  guifg=#808080
highlight Constant       ctermfg=75                                   guifg=#5fafff
highlight CursorLineNr   ctermfg=16      ctermbg=245                  guifg=#000000     guibg=#8a8a8a
highlight Delimiter      ctermfg=125                                  guifg=#af005f
highlight Directory      ctermfg=28                                   guifg=#008700
highlight Error          ctermbg=196                                  guifg=#ff0000
highlight Folded         ctermfg=18      ctermbg=242                  guifg=#000087     guibg=#8a8a8a
highlight Identifier     ctermfg=27                                   guifg=#005fff
highlight LineNr         ctermfg=254     ctermbg=236                  guifg=#e4e4e4     guibg=#303030
highlight MatchParen     ctermfg=16      ctermbg=31                   guifg=#000000     guibg=#0087af
highlight Normal         ctermfg=231                                  guifg=#ffffff
highlight NormalNC       ctermbg=233                                                    guibg=#121212
highlight Pmenu          ctermbg=16      ctermfg=28                   guifg=#000000     guibg=#008700
highlight PmenuSel       ctermbg=28      ctermfg=231                  guifg=#008700     guibg=#ffffff
highlight PreProc        ctermfg=47                                   guifg=#00ff5f
highlight Search         ctermfg=16      ctermbg=162                  guifg=#000000     guibg=#d70087
highlight Special        ctermfg=171                                  guifg=#d75fff
highlight spellbad       ctermfg=88      ctermbg=166                  guifg=#870000     guibg=#d75f00
highlight Statement      ctermfg=220                                  guifg=#ffd700
highlight StatusLine     ctermfg=16      ctermbg=245 cterm=none       guifg=#000000     guibg=#8a8a8a
highlight StatusLineNC   ctermfg=254     ctermbg=236 cterm=none       guifg=#e4e4e4     guibg=#303030
highlight Todo           ctermfg=92      ctermbg=45                   guifg=#8700d7     guibg=#00d7ff
highlight Type           ctermfg=34                                   guifg=#00af00
highlight Visual         ctermfg=16      ctermbg=247                  guifg=#000000     guibg=#9e9e9e

"Cambiar la apariencia según el modo --------- {{{
augroup linea
    autocmd!
    "Modo insertar
    autocmd InsertEnter * highlight CursorLine ctermbg=17
    autocmd InsertLeave * highlight CursorLine ctermbg=none
augroup END
"}}}
