-- Install packer

local execute = vim.api.nvim_command

local install_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

--if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  --execute('!git clone https://github.com/wbthomason/packer.nvim '.. install_path)
--end

vim.api.nvim_exec([[
  augroup Packer
    autocmd!
    autocmd BufWritePost init.lua PackerCompile
  augroup end
]], false)

local use = require('packer').use
require('packer').startup(function()
  use 'wbthomason/packer.nvim'       -- Package manager




  -- LSP+IDE
  use {'neovim/nvim-lspconfig'}     -- LSP default config
  use {'hrsh7th/nvim-compe'}
  use {'honza/vim-snippets'}
  --use {'SirVer/ultisnips'}
  use {'hrsh7th/vim-vsnip'}

--  use {'junegunn/fzf', run = fn['fzf#install']}
  use {'junegunn/fzf.vim'}
  use {'ojroques/nvim-lspfuzzy'}
  use {'nvim-treesitter/nvim-treesitter'}

  -- theme
  use 'morhetz/gruvbox'

  use 'tpope/vim-fugitive'           -- Git commands in nvim
  use 'tpope/vim-rhubarb'            -- Fugitive-companion to interact with github
  use 'tpope/vim-commentary'         -- "gc" to comment visual regions/lines
end)
