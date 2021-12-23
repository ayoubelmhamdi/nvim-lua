
  require('ay/function/last-position')

-- LSP capabilities as global
  -- require('ay/ls/lsp/capabilities') -- dir not removed
  require('ay/ls/lsp/signature')
-- LSP server
  require('ay/ls/lsp/bash/bashls')
  require('ay/ls/lsp/c/clangd')
  require('ay/ls/lsp/latex/texlab')
  require('ay/ls/lsp/lua/lua-ls')
  require('ay/ls/lsp/markdown/zeta-note')
  require('ay/ls/lsp/javascript/deno')
  --require('ay/ls/lsp/javascript/tsserver')

-- EFM formater
  require('ay/ls/formatter/efm')

  -- plugin lsp
  require("flutter-tools").setup{}

-- theme
--
--require('ay/theme/gruvbuddy')
  require('ay/theme/statusline')
  require('ay/theme/blankline')
  require('ay/theme/colorscheme') -- make in the end/to avoid ovvrided


  -- function
  require('ay/function/clip_board')
  require('ay/function/yank')
  require('ay/function/last-position')


  -- Pligin
  require('ay/conf/ay_cmp')
  require('ay/conf/autopair')
  require('ay/conf/cheatsheet')
  require('ay/conf/comment')
  require('ay/conf/globale')
  require('ay/conf/lspkind')
  require('ay/conf/packerPlugins')
  require('ay/conf/statusline')
  -- require('ay/conf/lightspeed') -- dir not removed


