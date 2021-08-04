nnoremap <Space>o <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <Space>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <Space>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <Space>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
nnoremap <Space>fs :Telescope current_buffer_fuzzy_find<cr>
nnoremap <Space>rs :Telescope session-lens  search_session<cr>



