require'lspconfig'.zeta_note.setup{
  cmd = {'zeta-note'},
  root_dir = require "lspconfig/util".root_pattern(".zeta.toml") -- or vim.fn.getcwd(),
}

