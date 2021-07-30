
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
vim.api.nvim_set_keymap('n', '<tab>', ':tabn<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-tab>', ':bnext<CR>', { noremap = true, silent = true })

map('i', '<C-u>', '<C-g>u<C-u>')  -- Make <C-u> undo-friendly
