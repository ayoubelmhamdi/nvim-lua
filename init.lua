-- INIT NVIM


require('nvPlugins')
require('luaSettings')
require('nvLSP')
require('nvIDE')



-- config in vimScript
vim.cmd('let startvim = reltime()') -- at the beginin
vim.cmd('source ~/.config/nvim/vimScript/init.vim')

vim.cmd('echo reltimestr(reltime(startvim))') -- at the end


