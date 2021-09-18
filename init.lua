vim.cmd('let startvim = reltime()') -- start chrono
-- INIT NVIM

require('impatient')
require('nvPlugins')
require('nvSettings')
require('nvLSP')
require('nvIDE')
require('nvTheme')
require('luasnip.loaders.from_vscode').load()

vim.cmd([[
hi Normal guibg=NONE ctermbg=NONE
source ~/.config/nvim/vimScript/init.vim
let g:minimap_width = 12
let g:minimap_auto_start = 1
let g:minimap_auto_start_win_enter = 1
let g:minimap_highlight_range=1
hi MinimapCurrentLine ctermfg=Green guifg=#50FA7B guibg=#32302f
let g:minimap_highlight = 'MinimapCurrentLine'
]])

vim.api.nvim_set_keymap('x', 'iu', ':lua require"treesitter-unit".select()<CR>', {noremap=true})
vim.api.nvim_set_keymap('x', 'au', ':lua require"treesitter-unit".select(true)<CR>', {noremap=true})
vim.api.nvim_set_keymap('o', 'iu', ':<c-u>lua require"treesitter-unit".select()<CR>', {noremap=true})
vim.api.nvim_set_keymap('o', 'au', ':<c-u>lua require"treesitter-unit".select(true)<CR>', {noremap=true})
vim.cmd('echo reltimestr(reltime(startvim))') -- end chrono
