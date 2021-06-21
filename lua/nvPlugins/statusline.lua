-- look at : https://github.com/hoob3rt/lualine.nvim
require'lualine'.setup {
  options = {lower = true},
  sections = {lualine_a = {{'mode', lower = false}}, lualine_b = {'branch'}}
}

