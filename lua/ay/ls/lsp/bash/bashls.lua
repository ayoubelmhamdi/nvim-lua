require'lspconfig'.bashls.setup {
    cmd = {"bash-language-server", "start"},
    filetypes = { "sh", "zsh" },
    -- root_dir =  vim.loop.cwd()
}
