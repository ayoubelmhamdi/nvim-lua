---@diagnostic disable: undefined-global
local nvim_lsp = require('lspconfig')
-- USER = vim.fn.expand('$USER')


-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches
-- "analysis_server.dart.snapshot"

-- Setup lspconfig.
require('lspconfig').vimls.setup {
  cmd = {'vim-language-server', '--stdio'},
  capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
}

require'lspconfig'.zeta_note.setup{
  capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities()),
  cmd = {'zeta-note'},
  -- TODO: remove on attach
  on_attach = on_attach
}

local servers = { "pyright", "rust_analyzer", "tsserver","vimls","zeta_note" }
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup { on_attach = on_attach }
end
