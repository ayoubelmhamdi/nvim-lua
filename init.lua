vim.g.mapleader = " "
-- adam adam adam
-- global path that should be use for plugins and modules
-- nvim_name = vim.fn.expand('$XDG_CONFIG_HOME')


vim.cmd([[
set guifont=Fira\Code:4
let startvim = reltime()
source $nvimdir/vimScript/init.vim
]]) -- start chrono !



require('ay')
require('impatient')
require('nvPlugins')
require('tsp')
require('nvSettings')
require('nvLSP')
require('nvIDE')
require('nvTheme')

vim.cmd([[
hi Normal guibg=NONE ctermbg=NONE

" end chrono
echo reltimestr(reltime(startvim))
]])
