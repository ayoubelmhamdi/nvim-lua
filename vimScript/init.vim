

lua << EOF
-- vim.api.nvim_exec('source '.. nvim_name ..'/nvim/vimScript/setSetting.vim')
-- vim.api.nvim_exec('source '.. nvim_name ..'/nvim/vimScript/keyMappings.vim')
-- vim.api.nvim_exec('source '.. nvim_name ..'/nvim/vimScript/autosave.vim')
-- vim.api.nvim_exec('source '.. nvim_name ..'/nvim/vimScript/count-time.vim')
-- vim.api.nvim_exec('source '.. nvim_name ..'/nvim/vimScript/flutter-reload.vim')
EOF

" source luaeval('nvim_name')..'/nvim/vimScript/compe_Allsnip.vim
" source luaeval('nvim_name')..'/nvim/vimScript/mkdir.vim
source $nvimdir/vimScript/setSetting.vim
source $nvimdir/vimScript/keyMappings.vim
source $nvimdir/vimScript/autosave.vim
source $nvimdir/vimScript/count-time.vim
source $nvimdir/vimScript/flutter-reload.vim
