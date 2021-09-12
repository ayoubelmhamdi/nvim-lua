vim.cmd('let startvim = reltime()') -- start chrono
-- INIT NVIM
require('impatient')

require('nvPlugins')
require('nvSettings')
require('nvLSP')
require('nvIDE')
require('nvTheme')
--require('luasnip.loaders.from_vscode').load()

vim.cmd([[
hi Normal guibg=NONE ctermbg=NONE
]])
-- config in vimScript
vim.cmd('source ~/.config/nvim/vimScript/init.vim')
-- vim.cmd('autocmd TermOpen * startinsert') -- for use fzf on term

vim.api.nvim_set_keymap('x', 'iu', ':lua require"treesitter-unit".select()<CR>', {noremap=true})
vim.api.nvim_set_keymap('x', 'au', ':lua require"treesitter-unit".select(true)<CR>', {noremap=true})
vim.api.nvim_set_keymap('o', 'iu', ':<c-u>lua require"treesitter-unit".select()<CR>', {noremap=true})
vim.api.nvim_set_keymap('o', 'au', ':<c-u>lua require"treesitter-unit".select(true)<CR>', {noremap=true})
vim.cmd('echo reltimestr(reltime(startvim))') -- end chrono
