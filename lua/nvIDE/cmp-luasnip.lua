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

-- local has_words_before = function()
--   if vim.api.nvim_buf_get_option(0, "buftype") == "prompt" then
--     return false
--   end
--   local line, col = unpack(vim.api.nvim_win_get_cursor(0))
--   return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
-- end

-- local feedkey = function(key)
--   vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true), "n", true)
-- end

-- local luasnip = require("luasnip")
-- local cmp = require("cmp")

-- cmp.setup({

--   -- ... Your other configuration ...

--   mapping = {

--     -- ... Your other mappings ...

--     ["<Tab>"] = cmp.mapping(function(fallback)
--       if vim.fn.pumvisible() == 1 then
--         feedkey("<C-n>")
--       elseif luasnip.expand_or_jumpable() then
--         luasnip.expand_or_jump()
--       elseif has_words_before() then
--         cmp.complete()
--       else
--         fallback() -- The fallback function sends a already mapped key. In this case, it's probably `<Tab>`.
--       end
--     end, { "i", "s" }),

--     ["<S-Tab>"] = cmp.mapping(function(fallback)
--       if vim.fn.pumvisible() == 1 then
--         feedkey("<C-p>")
--       elseif luasnip.jumpable(-1) then
--         luasnip.jump(-1)
--       else
--         fallback()
--       end
--     end, { "i", "s" }),

--     -- ... Your other mappings ...
--   },

--   -- ... Your other configuration ...
-- })




local function prequire(...)
local status, lib = pcall(require, ...)
if (status) then return lib end
    return nil
end

local luasnip = prequire('luasnip')
local cmp = prequire("cmp")

local t = function(str)
    return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local check_back_space = function()
    local col = vim.fn.col('.') - 1
    if col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
        return true
    else
        return false
    end
end

_G.tab_complete = function()
    if cmp and cmp.visible() then
        cmp.select_next_item()
    elseif luasnip and luasnip.expand_or_jumpable() then
        return t("<Plug>luasnip-expand-or-jump")
    elseif check_back_space() then
        return t "<Tab>"
    else
        cmp.complete()
    end
    return ""
end
_G.s_tab_complete = function()
    if cmp and cmp.visible() then
        cmp.select_prev_item()
    elseif luasnip and luasnip.jumpable(-1) then
        return t("<Plug>luasnip-jump-prev")
    else
        return t "<S-Tab>"
    end
    return ""
end

vim.api.nvim_set_keymap("i", "<Tab>", "v:lua.tab_complete()", {expr = true})
vim.api.nvim_set_keymap("s", "<Tab>", "v:lua.tab_complete()", {expr = true})
vim.api.nvim_set_keymap("i", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
vim.api.nvim_set_keymap("s", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
vim.api.nvim_set_keymap("i", "<C-E>", "<Plug>luasnip-next-choice", {})
vim.api.nvim_set_keymap("s", "<C-E>", "<Plug>luasnip-next-choice", {})
