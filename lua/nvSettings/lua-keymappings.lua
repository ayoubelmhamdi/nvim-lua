
-- lua key mapping
local function map(mode, lhs, rhs, opts) local options = {noremap = true} if opts then options = vim.tbl_extend('force', options, opts) end vim.api.nvim_set_keymap(mode, lhs, rhs, options) end

-- order is important for mapeader
vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', { noremap = true, silent = true })
vim.g.mapleader = ' '
vim.api.nvim_set_keymap('n', '<Leader>h', ':set hlsearch!<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>e', ':Lexplore<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true, silent = true })


-- fast go to normal mode
vim.api.nvim_set_keymap('i', 'jj', '<Esc>', { noremap = true, silent = true })

-- fast buffer
vim.api.nvim_set_keymap('n', '<tab>', ':bnext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-tab>', ':bprevious<CR>', { noremap = true, silent = true })

-- tab complition
--vim.api.nvim_set_keymap('i', '<expr><TAB>', 'pumvisible() ? \"\\<C-n>\" : \"\\<TAB>\"', { noremap = true, silent = true })
map('i', '<C-u>', '<C-g>u<C-u>')  -- Make <C-u> undo-friendly



--    -- Set some keybinds conditional on server capabilities
--    if client.resolved_capabilities.document_formatting then
--        buf_set_keymap("n", "<leader>lf", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
--    elseif client.resolved_capabilities.document_range_formatting then
--        buf_set_keymap("n", "<leader>lf", "<cmd>lua vim.lsp.buf.range_formatting()<CR>", opts)
--    end


