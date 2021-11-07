require("lspconfig").clangd.setup {
    cmd = {
        "clangd",
        "--background-index",
        "--cross-file-rename",
        "--header-insertion=iwyu",
        "--completion-style=bundled",
        "--malloc-trim"
    },
    on_attach = on_attach,
    vim.lsp.diagnostic.disable(),
    -- capabilities = require("lsp").capabilities,
}
