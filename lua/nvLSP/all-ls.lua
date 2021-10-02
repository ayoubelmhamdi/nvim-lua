---@diagnostic disable: undefined-global
-- on_attach = require'lsp'.common_on_attach
local nvim_lsp = require('lspconfig')


local servers = { "pyright", "rust_analyzer", "tsserver","vimls","zeta_note","bashls", "ccls","texlab" }
for _, lsp in ipairs(servers) do
  capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
  nvim_lsp[lsp].setup { on_attach = on_attach }
end

nvim_lsp.vimls.setup {
  cmd = {'vim-language-server', '--stdio'},
}

nvim_lsp.zeta_note.setup{
  cmd = {'zeta-note'},
  -- root_dir = require "lspconfig/util".root_pattern(".zeta.toml"),
  root_dir = function(fname) return vim.fn.getcwd() end,
  package_json = "https://raw.githubusercontent.com/artempyanykh/zeta-note-vscode/main/package.json";
}

nvim_lsp.bashls.setup {
    cmd = {"bash-language-server", "start"},
    filetypes = { "sh", "zsh" },
    root_dir = function() return vim.loop.cwd() end
}
-- require"lspconfig".efm.setup {
--     -- init_options = {initializationOptions},
--     cmd = {DATA_PATH .. "/lspinstall/efm/efm-langserver"},
--     init_options = {documentFormatting = true, codeAction = false},
--     filetypes = {"zsh"},
--     settings = {
--         rootMarkers = {".git/"},
--         languages = {
--             sh = sh_arguments,
--         }
--     }
-- }


nvim_lsp.ccls.setup {
	cmd = { "ccls" },
	filetypes = { "c", "cpp" },
	init_options = {
    cache = { directory = ".ccls-cache"; },
    highlight = { lsRanges = true },
		compilationDatabaseDirectory = "build";
		index = { threads = 0; };
		clang = {
			excludeArgs = { "-frounding-math"} ;
		},
	},
  root_dir = require "lspconfig/util".root_pattern("compile_commands.json", "compile_flags.txt", ".git", ".ccls"),
}


-- require'lspconfig'.texlab.setup{

--     -- settings = {
--     --       bibtex = {
--     --           formatting = {
--     --               lineLength = 90
--     --           }
--     --       },
--     --   latex = {
--     --     build = {
--     --       args = { "-pdf", "-interaction=nonstopmode", "-synctex=1", "%f", "-pvc" },
--     --       executable = "tectonic",
--     --       onSave = true
--     --     },
--     --     forwardSearch = {
--     --       executable = "okular",
--     --       args = {"--unique", "file:%p#src:%l%f"}
--     --     },
--     --     lint = {
--     --       onSave = true
--     --     }
--     --   }
--     -- },
-- }
