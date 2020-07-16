colorscheme nicoopaco

match Todo /page[=\ ]\|url[=\ ]\|\;/

"leader D hace magia: Desde un DOI en el portapapeles del sistema a un bib completo ene el buffer
nnoremap <leader>D :r !doi2bib <c-r>+<cr>
