local nvim_lsp = require('lspconfig')


--for simple lsp use 'local cmd for each lsp and make bookle'
local servers = { "texlab","pyright","tsserver" , "rust_analyzer", "tsserver","vimls","zeta_note","bashls"  }
for _, lsp in ipairs(servers) do
  capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
  nvim_lsp[lsp].setup { on_attach = on_attach ,
  flags = { allow_incremental_sync = false}}
end

