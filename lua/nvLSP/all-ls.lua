---@diagnostic disable: undefined-global
local nvim_lsp = require('lspconfig')


local servers = { "pyright", "rust_analyzer", "tsserver","vimls","zeta_note" }
for _, lsp in ipairs(servers) do
  capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
  nvim_lsp[lsp].setup { on_attach = on_attach }
end

nvim_lsp.vimls.setup {
  cmd = {'vim-language-server', '--stdio'},
}

nvim_lsp.zeta_note.setup{
  cmd = {'zeta-note'},
  root_dir = require "lspconfig/util".root_pattern(".zeta.toml"),
  package_json = "https://raw.githubusercontent.com/artempyanykh/zeta-note-vscode/main/package.json";
}


