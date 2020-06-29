setlocal suffixesadd+=.md
setlocal foldmethod=manual

"Para dar formato a tablas
command! -range Tabla <line1>,<line2>s /|/§|/g | <line1>,<line2>!column -s § -t
