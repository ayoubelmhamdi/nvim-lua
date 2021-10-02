autocmd FileType lua lua require'cmp'.setup.buffer {
\   sources = {
\     { name = 'nvim_lua' },
\   },
\ }


autocmd FileType markdown lua require'cmp'.setup.buffer {
\   sources = {
\     { name = 'emoji' },
\     { name = "latex_symbols" },
\   },
\ }


" comment
\     { name = 'nvim_lua' },
\     { name = "latex_symbols" },
\
\     { name = 'look' , keyword_lengh=2 },
\     { name = 'spell' },
\     { name = 'nuspell' },
\     { name = "user_dictionary" },
\"

