---@diagnostic disable: undefined-global
-- on_attach = require'lsp'.common_on_attach
local nvim_lsp = require('lspconfig')


local servers = { "texlab","pyright", "rust_analyzer", "tsserver","vimls","zeta_note","bashls", "ccls","denols" }
for _, lsp in ipairs(servers) do
  capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
  nvim_lsp[lsp].setup { on_attach = on_attach }
end

nvim_lsp.zeta_note.setup{
  cmd = {'zeta-note'},
  root_dir = require "lspconfig/util".root_pattern(".zeta.toml") or function(fname) return vim.fn.getcwd() end,
}

nvim_lsp.bashls.setup {
    cmd = {"bash-language-server", "start"},
    filetypes = { "sh", "zsh" },
    root_dir = function() return vim.loop.cwd() end
}

nvim_lsp.ccls.setup {
	init_options = {
    cache = { directory = ".ccls-cache"; },
    highlight = { lsRanges = true },
		compilationDatabaseDirectory = "build";
		index = { threads = 0; };
		clang = {
			excludeArgs = { "-frounding-math"} ;
		},
	},
}

-- require"lspconfig".efm.setup {
--     -- init_options = {initializationOptions},
--     cmd = {"efm-langserver"},
--     init_options = {documentFormatting = true, codeAction = false},
--     filetypes = {"zsh", 'python','cpp','lua',},
--     on_attach = on_attach,
--     settings = {
--         rootMarkers = {".git/"},
--         languages = {
--             sh = sh_arguments,
--               lua = {
--                 {formatCommand = "lua-format -i", formatStdin = true}
--             }
--         }
--     }
-- }
-- Run setup and specify two custom build engines
require('texmagic').setup{
    engines = {
        pdflatex = {    -- This has the same name as a default engine but would
                        -- be preferred over the same-name default if defined
            executable = "latexmk",
            args = {
                "-pdflatex",
                "-interaction=nonstopmode",
                "-synctex=1",
                "-outdir=.build",
                "-pv",
                "%f"
            },
            isContinuous = false
        },
        lualatex = {    -- This is *not* one of the defaults, but it can be
                        -- called via magic comment if defined here
            executable = "latexmk",
            args = {
                "-pdflua",
                "-interaction=nonstopmode",
                "-synctex=1",
                "-pv",
                "%f"
            },
            isContinuous = false
        }
    }
}


