vim.cmd([[autocmd BufWritePost mytelescope.lua source <afile>]])

require('telescope').setup{
    defaults ={
        prompt_prefix ="$$ ",
        vimgrep_arguments = {
          'rg',
          '--color=never',
          '--no-heading',
          '--with-filename',
          '--line-number',
          '--column',
          '--smart-case'
        },
    }
}
