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

]])
-- config in vimScript
vim.cmd('source ~/.config/nvim/vimScript/init.vim')
-- vim.cmd('autocmd TermOpen * startinsert') -- for use fzf on term
vim.cmd('echo reltimestr(reltime(startvim))') -- end chrono

