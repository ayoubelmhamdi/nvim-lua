vim.g.mapleader = " "
-- adam adam adam
-- global path that should be use for plugins and modules
-- nvim_name = vim.fn.expand('$XDG_CONFIG_HOME')

local line = vim.fn.line
function last_place()
    -- if vim.api.nvim_win_is_valid(0) and vim.api.nvim_buf_is_loaded(0) then
    if vim.tbl_contains(vim.api.nvim_list_bufs(), vim.api.nvim_get_current_buf()) then
        if not vim.tbl_contains({"help", "packer", "toggleterm"}, vim.bo.ft) then
            if line [['"]] > 1 and line [['"]] <= line("$") then
                vim.cmd [[norm '"]]
            end
        end
    end
end
vim.cmd [[au BufEnter * lua last_place()]]
vim.cmd([[
set guifont=Fira\Code:4
let startvim = reltime()
source $nvimdir/vimScript/init.vim
]]) -- start chrono !



require('impatient')
require('nvPlugins')
require('tsp')
require('nvSettings')
require('nvLSP')
require('nvIDE')
require('nvTheme')

vim.cmd([[
hi Normal guibg=NONE ctermbg=NONE

" end chrono
echo reltimestr(reltime(startvim))
]])
