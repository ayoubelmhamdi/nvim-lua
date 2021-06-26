-- lua server module
local system_name
USER = vim.fn.expand('$USER')

if vim.fn.has("mac") == 1 then
  system_name = "macOS"
elseif vim.fn.has("unix") == 1 then
  system_name = "Linux"
elseif vim.fn.has('win32') == 1 then
  system_name = "Windows"
else
  print("Unsupported system for sumneko")
end



-- set the path to the sumneko installation; if you previously installed via the now deprecated :LspInstall, use
-- local sumneko_root_path = '/'.. USER ..'/.config/nvim/lspconfig/sumneko_lua/lua-language-server'
-- local sumneko_binary = sumneko_root_path.."/bin/"..system_name.."/lua-language-server"

local sumneko_root_path = '/'.. USER ..'/.config/nvim/lua-language-server'
local sumneko_binary = sumneko_root_path.."/bin/"..system_name.."/lua-language-server"



require'lspconfig'.sumneko_lua.setup {
  cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua"};
  -- capabilities = capabilities,
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
        globals = {"vim", "map", "filter", "range", "reduce", "head", "tail", "nth", "use"},
        disable = {"lowercase-global"}
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        preloadFileSize = 500,
        -- library = vim.api.nvim_get_runtime_file("", true),
        -- library = {[vim.fn.expand('$VIMRUNTIME/lua')] = true, [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true},
        library = {
          [vim.fn.expand'~/.luarocks/share/lua/5.3'] = true,
          ['/usr/share/lua/5.3'] = true
       }
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
  on_attach = on_attach
}

