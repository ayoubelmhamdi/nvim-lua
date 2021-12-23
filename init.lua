  vim.g.mapleader = " "
  vim.cmd('set guifont="Fira Code:4"')
  vim.cmd('let startvim = reltime()')
  vim.cmd('source $nvimdir/vimScript/init.vim')
  -- start chrono !

  require('ay')
  require('tsp')

  require('impatient')

  vim.cmd('echo reltimestr(reltime(startvim))')

