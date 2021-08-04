
inoremap <silent><expr> <C-Space> compe#complete()
" TODO: view autopaire suggection in
" https://github.com/hrsh7th/nvim-compe#mappings
" inoremap <silent><expr> <CR>      compe#confirm(luaeval("require 'nvim-autopairs'.autopairs_cr()"))
inoremap <silent><expr> <CR>      compe#confirm('<CR>')
inoremap <silent><expr> <C-e>     compe#close('<C-e>')
inoremap <silent><expr> <C-f>     compe#scroll({ 'delta': +4 })
inoremap <silent><expr> <C-d>     compe#scroll({ 'delta': -4 })

" inoremap <silent> <Plug>luasnip-expand-or-jump <cmd>lua require'luasnip'.expand_or_jump()<Cr>
" snoremap <silent> <Plug>luasnip-expand-or-jump <cmd>lua require'luasnip'.expand_or_jump()<Cr>


" " pmenu and vim-vsnip
" imap <expr> <Tab>   pumvisible() ? "<C-n>" : vsnip#jumpable(1)   ? "<Plug>(vsnip-jump-next)" : "<Tab>"
" imap <expr> <S-Tab> pumvisible() ? "<C-p>" : vsnip#jumpable(-1)  ? "<Plug>(vsnip-jump-prev)" : "<S-Tab>"
" smap <expr> <Tab>   vsnip#jumpable(1)  ? "<Plug>(vsnip-jump-next)" : "<Tab>"
" smap <expr> <S-Tab> vsnip#jumpable(-1) ? "<Plug>(vsnip-jump-prev)" : "<S-Tab>"
"

"" " pmenu and vim-vsnip
"imap <expr> <silent> <Tab>  <Plug>luasnip-expand-or-jump <cmd>lua require'luasnip'.expand_or_jump()<Cr>
"" imap <expr> <S-Tab> pumvisible() ? "<C-p>" : vsnip#jumpable(-1)  ? "<Plug>(vsnip-jump-prev)" : "<S-Tab>"
""
"smap <expr> <silent> <Tab>  <Plug>luasnip-expand-or-jump <cmd>lua require'luasnip'.expand_or_jump()<Cr>
"" smap <expr> <S-Tab> vsnip#jumpable(-1) ? "<Plug>(vsnip-jump-prev)" : "<S-Tab>"
""
