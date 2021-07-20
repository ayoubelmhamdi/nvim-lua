   local use = require('packer').use
   require('packer').startup(
function()
-- Dependencies:
   use {'wbthomason/packer.nvim'}
   use {'nvim-lua/popup.nvim'}
   use {'nvim-lua/plenary.nvim'}
   use {'ojroques/nvim-lspfuzzy'}
   use {'nvim-treesitter/nvim-treesitter'}
   use {'nvim-telescope/telescope.nvim'}
   use {'kyazdani42/nvim-web-devicons'}

   -- LSP+IDE
   use {'neovim/nvim-lspconfig'}
   use {'hrsh7th/nvim-compe'}
   -- engeen: hrsh7th/vim-vsnip[vimScript], L3MON4D3/LuaSnip[lua], coc-snippets[vim-snippets]
   use 'L3MON4D3/LuaSnip'
   -- data sinippets
   use "rafamadriz/friendly-snippets"
   -- use {'honza/vim-snippets'}
   -- use {'mfussenegger/nvim-dap'}
   -- use {'SirVer/ultisnips'}
   use {'akinsho/flutter-tools.nvim'}

   -- use {'junegunn/fzf.vim'}
   --use 'ggandor/lightspeed.nvim' -- Sneak motions



   -- theme
   use {"npxbr/gruvbox.nvim", requires = {"rktjmp/lush.nvim"}}
   -- use {'morhetz/gruvbox'}
   -- use {'tjdevries/colorbuddy.vim'}
   -- use {'tjdevries/gruvbuddy.nvim'}

   -- Tab
   use {'akinsho/nvim-bufferline.lua'}
   -- Status line
   use {'hoob3rt/lualine.nvim'}


   -- Misc
   use {'907th/vim-auto-save'}
   use {'tpope/vim-fugitive'}
   use {'tpope/vim-commentary'}
   -- use {'lewis6991/spellsitter.nvim'}
   use 'tjdevries/train.nvim'
   use 'phaazon/hop.nvim'
   use {"folke/todo-comments.nvim"  }
   -- REGISTRE
   --use {'gennaro-tedesco/nvim-peekup'}
   --Or
   --use "tversteeg/registers.nvim"
   -- NOTE: : <cmd> TodoTrouble TodoTelescope TodoQuickFix
   -- TODO:
   -- HACK:
   -- WARN:
   -- PERF:



end)


vim.api.nvim_exec([[
  augroup Packer
    autocmd!
    autocmd BufWritePost init.lua PackerCompile
  augroup end
]], false)
