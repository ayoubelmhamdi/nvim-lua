require'lspconfig'.zeta_note.setup{
  capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities()),
  flags = { allow_incremental_sync = false},
  cmd = {'zeta-note'},
  root_dir = require "lspconfig/util".root_pattern(".zeta.toml") -- or vim.fn.getcwd(),
}

