-- 
-- Set completeopt to have a better completion experience
vim.o.completeopt = "menuone,noselect"

-- Setup nvim-cmp.
local cmp = require'cmp'

cmp.setup({
  snippet = {
    expand = function(args)
      -- For `luasnip` user.
      require('luasnip').lsp_expand(args.body)
    end,
  },
  mapping = {
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  },
  sources = {
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
    { name = 'buffer' },
    { name = 'path' },
    { name = 'cmp_tabnine' },
    { name='look' },
    { name = "latex_symbols" },
    { name = 'treesitter' },
    { name = 'emoji' },
    -- 
  },
  formatting = {
      format = function(entry, vim_item)
          -- fancy icons and a name of kind
          vim_item.kind = require("lspkind").presets.default[vim_item.kind] ..
                              " " .. vim_item.kind
          -- set a name for each source
          vim_item.menu = ({
              buffer = "[Buffer]",
              nvim_lsp = "[LSP]",
              ultisnips = "[UltiSnips]",
              nvim_lua = "[Lua]",
              cmp_tabnine = "[TabNine]",
              look = "[Look]",
              path = "[Path]",
              spell = "[Spell]",
              calc = "[Calc]",
              emoji = "[Emoji]"
          })[entry.source.name]
          return vim_item
      end
  },
})

-- Setup lspconfig.
local USER = vim.fn.expand('$USER')
require('lspconfig').vimls.setup {
  cmd = {'vim-language-server', '--stdio'},
  capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
}
