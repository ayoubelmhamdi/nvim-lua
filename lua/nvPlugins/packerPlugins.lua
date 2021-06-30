-- Install packer

-- local execute = vim.api.nvim_command
-- local install_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'


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
  use {'mfussenegger/nvim-dap' , config = function() require("todo-comments").setup {} end }
  use {'hrsh7th/nvim-compe'}
  use {'honza/vim-snippets'}
  --use {'SirVer/ultisnips'}
  use {'hrsh7th/vim-vsnip'}
  -- fluter/dart
  use {'akinsho/flutter-tools.nvim', requires = 'nvim-lua/plenary.nvim'}

  -- FIND FILE AND STRING
  use {'junegunn/fzf.vim'}
  use {'ojroques/nvim-lspfuzzy'}
  use {'nvim-treesitter/nvim-treesitter'}
  use { 'nvim-telescope/telescope.nvim', requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}} } end)
  --Registre
  use "tversteeg/registers.nvim"
  -- Sneak motions
  use 'ggandor/lightspeed.nvim'

  -- Spell
  use { 'lewis6991/spellsitter.nvim' }


  --Git
  use {'f-person/git-blame.nvim'}

  -- TODO-VIEWER
  -- NOTE: T-O-D-O HACK WARN PERF NOTE
  -- TodoTrouble TodoTelescope TodoQuickFix 
  use { "folke/todo-comments.nvim", requires = "nvim-lua/plenary.nvim", config = function() require("todo-comments").setup {} end }
  -- auto save
  use { '907th/vim-auto-save' }



  -- theme
  --use {'morhetz/gruvbox'}
  use {'tjdevries/colorbuddy.vim'}
  use {'tjdevries/gruvbuddy.nvim'}
  -- windows
  use 'sunjon/shade.nvim'
  -- Tab
  use {'akinsho/nvim-bufferline.lua', requires = 'kyazdani42/nvim-web-devicons'}
  -- Status line
  use {
    'hoob3rt/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }



  -- Git 
  use {'tpope/vim-fugitive'}           -- Git commands in nvim
  use {'tpope/vim-rhubarb'}            -- Fugitive-companion to interact with github
  -- vim commentary
  use {'tpope/vim-commentary'}         -- "gc" to comment visual regions/lines


  -- more cosmusation
  
  -- REGISTRE
  use {'gennaro-tedesco/nvim-peekup'}
  
