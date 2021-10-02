autocmd FileType lua lua require'cmp'.setup.buffer {
\   sources = {
\     { name = 'nvim_lua' },
\
\     { name = 'nvim_lsp' },
\     { name = 'luasnip' },
\     { name = 'buffer' },
\     { name = 'path' },
\     { name = 'cmp_tabnine' },
\     { name = 'treesitter' },
\   },
\ }


autocmd FileType markdown lua require'cmp'.setup.buffer {
\   sources = {
\     { name = 'emoji' },
\     { name = "latex_symbols" },
\
\     { name = 'nvim_lsp' },
\     { name = 'luasnip' },
\     { name = 'buffer' },
\     { name = 'path' },
\     { name = 'cmp_tabnine' },
\     { name = 'treesitter' },
\   },
\ }


" comment
\     { name = 'nvim_lsp' },
\     { name = 'luasnip' },
\     { name = 'buffer' },
\     { name = 'path' },
\     { name = 'cmp_tabnine' },
\     { name = 'treesitter' },
\
\
\     { name = 'nvim_lua' },
\     { name = "latex_symbols" },
\
\     { name = 'look' , keyword_lengh=2 },
\     { name = 'spell' },
\     { name = 'nuspell' },
\     { name = "user_dictionary" },
\"

