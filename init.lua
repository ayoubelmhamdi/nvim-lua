vim.g.mapleader = " "
vim.cmd([[
set guifont=Fira\Code:4
let startvim = reltime()
source $nvimdir/vimScript/init.vim
]]) -- start chrono !

require('ay')
require('nvPlugins')
require('tsp')
require('nvSettings')
require('nvLSP')
require('nvIDE')
require('nvTheme')

vim.cmd([[
hi Normal guibg=NONE ctermbg=NONE

lua require('impatient')
" end chrono
echo reltimestr(reltime(startvim))
]])
