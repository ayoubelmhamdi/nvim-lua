-- adam adam adam

-- global path that should be use for plugins and modules
--nvim_name = vim.fn.expand('$XDG_CONFIG_HOME')

vim.cmd([[
let startvim = reltime()
]]) -- start chrono


require('impatient')
require('nvPlugins')
require('nvSettings')
require('nvLSP')
require('nvIDE')
require('nvTheme')


vim.cmd([[
source $nvimdir/vimScript/init.vim
hi Normal guibg=NONE ctermbg=NONE

" end chrono
echo reltimestr(reltime(startvim))
]])
