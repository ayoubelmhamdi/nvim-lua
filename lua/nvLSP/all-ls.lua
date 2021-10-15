---@diagnostic disable: undefined-global
-- on_attach = require'lsp'.common_on_attach
local nvim_lsp = require('lspconfig')


-- TODO: splite on_attach from boocle to file
--for simple lsp use 'local cmd for each lsp and make bookle'
local servers = { "texlab","pyright", "rust_analyzer", "tsserver","vimls","zeta_note","bashls", "ccls","denols"  }
for _, lsp in ipairs(servers) do
  capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
  nvim_lsp[lsp].setup { on_attach = on_attach ,
  flags = { allow_incremental_sync = false}}
end

nvim_lsp.zeta_note.setup{
  cmd = {'zeta-note'},
  root_dir = require "lspconfig/util".root_pattern(".zeta.toml") -- or vim.fn.getcwd(),
}

nvim_lsp.bashls.setup {
    cmd = {"bash-language-server", "start"},
    filetypes = { "sh", "zsh" },
    -- root_dir =  vim.loop.cwd()
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

-- TODO: move to file
require'lspconfig'.texlab.setup{
  cmd = { 'texlab' },
  filetypes = { 'tex', 'bib' },
  settings = {
    texlab = {
      auxDirectory = '.',
      bibtexFormatter = 'texlab',
      build = {
        executable = 'latexmk',
        args = { '-pdf', '-outdir=build', '-interaction=nonstopmode', '-synctex=0', '%f' },
        forwardSearchAfter = false,
        onSave = true,
      },
      chktex = {
        onEdit = true,
        onOpenAndSave = false,
      },
      diagnosticsDelay = 300,
      formatterLineLength = 80,
      forwardSearch = {
        executable = 'zathura',
        args = { '%p' }
      },
      latexFormatter = 'latexindent',
      latexindent = {
        modifyLineBreaks = false,
      }
    }
  }
}


