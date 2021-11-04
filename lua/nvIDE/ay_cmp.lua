-- to make snippet change whe add any char
-- know i'm disable because TextChangedI make text write randomly on screen
-- require'luasnip'.config.setup({updateevents="TextChangedI" })

-- to load vs code snippet
-- must loaded after luasnip call snippet
vim.cmd('set rtp+=/projects/lua/friendly-snippets')
require('luasnip.loaders.from_vscode').load()
-- snippets/flutter.json

vim.cmd([[
        autocmd BufWritePost *.json lua require("luasnip").snippets={}
        autocmd BufWritePost *.json lua require("luasnip.loaders.from_vscode").load()
]])
--
-- Set completeopt to have a better completion experience
-- tis some visiter
--
-- vim.o.completeopt = "menu,menuone,noselect"
vim.o.completeopt = 'menuone,noselect'

-- luasnip setup
local luasnip = require 'luasnip'

-- nvim-cmp setup
local cmp = require 'cmp'
cmp.setup {
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end
    },
    mapping = {
        ['<C-p>'] = cmp.mapping.select_prev_item(),
        ['<C-n>'] = cmp.mapping.select_next_item(),
        ['<C-d>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.close(),
        ['<CR>'] = cmp.mapping.confirm {behavior = cmp.ConfirmBehavior.Replace, select = true},
        ['<Tab>'] = function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            elseif luasnip.expand_or_jumpable() then
                vim.fn.feedkeys(vim.api.nvim_replace_termcodes('<Plug>luasnip-expand-or-jump', true, true, true), '')
            else
                fallback()
            end
        end,
        ['<S-Tab>'] = function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            elseif luasnip.jumpable(-1) then
                vim.fn.feedkeys(vim.api.nvim_replace_termcodes('<Plug>luasnip-jump-prev', true, true, true), '')
            else
                fallback()
            end
        end
    },
    sources = {
        {name = 'path'},
        {name = 'luasnip', opts = {use_show_condition = false}},
        {name = 'nvim_lsp'},
        {name = 'cmp_tabnine'},
        {name = 'treesitter'},
        {name = 'buffer'}
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
            vim_item.kind = require("lspkind").presets.default[vim_item.kind] .. " " .. vim_item.kind
            -- set a name for each source
            vim_item.menu = ({
                buffer = "[Buffer]",
                calc = "[Calc]",
                cmp_tabnine = "[TabNine]",
                emoji = "[Emoji]",
                latex_symbols = " [Latex_symbols]",
                look = "[Look]",
                luasnip = " [Luasnip]",
                nuspell = " [Nuspell]",
                nvim_lsp = "[LSP]",
                nvim_lua = "[Lua]",
                path = "[Path]",
                spell = "[Spell]",
                treesitter = " [Treesitter]",
                user_dictionary = " [User_dictionary]"

            })[entry.source.name]
            return vim_item
        end
    }

}
