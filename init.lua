  vim.g.mapleader = " "
  vim.cmd('set guifont="Fira Code:4"')
  vim.cmd('let startvim = reltime()')
  vim.cmd('source $nvimdir/vimScript/init.vim')
  -- start chrono !

  require('ay')
  require('nvPlugins')
  require('tsp')
  require('nvSettings')
  -- require('nvLSP')
  require('nvIDE')
  -- require('nvTheme')

  require('impatient')

  vim.cmd('echo reltimestr(reltime(startvim))')

  -- function ddd(a,b,c)
  --   -- code
  -- end
