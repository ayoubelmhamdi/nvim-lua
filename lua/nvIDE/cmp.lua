-- TODO: fix tab
--
-- Set completeopt to have a better completion experience
-- tis some visiter
--
vim.o.completeopt = "menu,menuone,noselect"
local cmp = require'cmp'


cmp.setup({
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  mapping = {
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
    ['<Tab>'] = function(fallback)
        if cmp.visible() then
          cmp.select_next_item()
        else
          fallback()
        end
      end
  },
  sources = {
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
    { name = 'buffer' },
    { name = 'path' },
    { name = 'cmp_tabnine' },
    { name = 'treesitter' },
    -- { name = 'nvim_lua', keyword_lengh=1 },
    -- { name = 'look' , keyword_lengh=0 },
    -- { name = 'spell' },
    -- { name = 'nuspell' },
    -- { name = "user_dictionary" },
    -- { name = "latex_symbols" },
    -- { name = 'emoji' },

  },
  formatting = {
      format = function(entry, vim_item)
          -- fancy icons and a name of kind
          vim_item.kind = require("lspkind").presets.default[vim_item.kind] ..
                              " " .. vim_item.kind
          -- set a name for each source
          vim_item.menu = ({
              buffer            = "[Buffer]",
              calc              = "[Calc]",
              cmp_tabnine       = "[TabNine]",
              emoji             = "[Emoji]",
              latex_symbols     =" [Latex_symbols]",
              look              = "[Look]",
              luasnip           =" [Luasnip]",
              nuspell           =" [Nuspell]",
              nvim_lsp          = "[LSP]",
              nvim_lua          = "[Lua]",
              path              = "[Path]",
              spell             = "[Spell]",
              treesitter        =" [Treesitter]",
              user_dictionary   =" [User_dictionary]",

          })[entry.source.name]
          return vim_item
      end
  },
})
