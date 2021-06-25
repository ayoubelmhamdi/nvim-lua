vim.cmd('let startvim = reltime()') -- at the beginin
-- INIT NVIM ==> 


require('nvPlugins')
require('nvSettings')
require('lsp')
require('nvLSP')
require('nvIDE')
require('nvTheme')



-- config in vimScript
vim.cmd('source ~/.config/nvim/vimScript/init.vim')
vim.cmd('echo reltimestr(reltime(startvim))') -- at the end



