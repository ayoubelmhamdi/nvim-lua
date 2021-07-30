vim.cmd('let startvim = reltime()') -- start chrono
-- INIT NVIM


require('nvPlugins')
require('nvSettings')
require('nvLSP')
require('nvIDE')
require('nvTheme')




-- config in vimScript
vim.cmd('source ~/.config/nvim/vimScript/init.vim')
vim.cmd('echo reltimestr(reltime(startvim))') -- end chrono



