
require'lspconfig'.bashls.setup {
    capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities()),
    flags = { allow_incremental_sync = false},
    cmd = {"bash-language-server", "start"},
    filetypes = { "sh", "zsh" },
    -- root_dir =  vim.loop.cwd()
}
