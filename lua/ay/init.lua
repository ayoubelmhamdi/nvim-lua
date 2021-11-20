
  require('ay.function.last-position')

-- LSP server
  require('ay.ls.lsp.bash.bashls')
  require('ay.ls.lsp.c.clangd')
  require('ay.ls.lsp.latex.texlab')
  require('ay.ls.lsp.lua.lua-ls')
  require('ay.ls.lsp.markdown.zeta-note')
  require('ay.ls.lsp.javascript.deno')
  --require('ay.ls.lsp.javascript.tsserver')

-- EFM formater
  require('ay.ls.formatter.efm')

  -- plugin lsp
  require("flutter-tools").setup{}

-- theme
--require('ay.theme.gruvbuddy')
  require('ay.theme.statusline')
  require('ay.theme.blankline')
  require('ay.theme.colorscheme') -- make in the end/to avoid ovvrided

  -- Pligin
  require('ay.conf/lightspeed_')


