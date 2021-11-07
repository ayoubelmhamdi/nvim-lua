-- lua server module


USER = vim.fn.expand('$USER')
local sumneko_root_path = '/'.. USER ..'/.cache/lua-language-server'
local sumneko_binary = sumneko_root_path.."/bin/Linux/lua-language-server"


require'lspconfig'.sumneko_lua.setup {

  capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities()),
  cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua"},
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
        -- Setup your lua path
        path = {
            '?.lua',
            '?/init.lua',
            vim.fn.expand'~/.luarocks/share/lua/5.3/?.lua',
            vim.fn.expand'~/.luarocks/share/lua/5.3/?/init.lua',
            '/usr/share/5.3/?.lua',
            '/usr/share/lua/5.3/?/init.lua'
          }
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        -- globals = {'vim'},
        enable = true,
        globals = {"vim","library", "map", "filter", "range", "reduce", "head", "tail", "nth", "use"},
        disable = {"lowercase-global"}
      },
      completion = { callSnippet = "Both" },
      workspace = {
        -- Make the server aware of Neovim runtime files
        maxPreload = 2000,
        preloadFileSize = 50000,
        -- library = vim.api.nvim_get_runtime_file("", true),
        -- library = {[vim.fn.expand('$VIMRUNTIME/lua')] = true, [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true},
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
}

