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

  -- FIND FILE AND STRING
  use {'junegunn/fzf.vim'}
  use {'ojroques/nvim-lspfuzzy'}
  use {'nvim-treesitter/nvim-treesitter'}
  use { 'nvim-telescope/telescope.nvim', requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}} } end)

  -- Spell
  use {
    -- Optional but recommended
    -- 'nvim-treesitter/nvim-treesitter',
    'lewis6991/spellsitter.nvim',
  }





  -- theme
  --use {'morhetz/gruvbox'}
  use {'tjdevries/colorbuddy.vim'}
  use {'tjdevries/gruvbuddy.nvim'}
  -- windows
  use 'sunjon/shade.nvim'
  -- Tab
  use {'kyazdani42/nvim-web-devicons'}
  use {'romgrk/barbar.nvim'}



  -- Git 
  use {'tpope/vim-fugitive'}           -- Git commands in nvim
  use {'tpope/vim-rhubarb'}            -- Fugitive-companion to interact with github
  -- vim commentary
  use {'tpope/vim-commentary'}         -- "gc" to comment visual regions/lines


  -- more cosmusation
  
  -- REGISTRE
  use {'gennaro-tedesco/nvim-peekup'}
  
