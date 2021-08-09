

local use = require('packer').use
require('packer').startup(
function()
-- Dependencies:
   use 'wbthomason/packer.nvim'
   use 'nvim-lua/popup.nvim'
   use 'nvim-lua/plenary.nvim'
   use 'ojroques/nvim-lspfuzzy'
   use 'nvim-treesitter/nvim-treesitter'
   use 'nvim-telescope/telescope.nvim'
   -- use 'nvim-telescope/telescope-frecency.nvim'
   use 'nvim-telescope/telescope-project.nvim'
   use 'nvim-telescope/telescope-fzf-native.nvim'
   use 'kyazdani42/nvim-web-devicons'
   use 'tami5/sql.nvim'

-- LSP+IDE
   use 'neovim/nvim-lspconfig'
   use 'hrsh7th/nvim-compe'

   -- option 1 :vimscript
   -- use 'hrsh7th/vim-vsnip'
   -- use 'hrsh7th/vim-vsnip-integ'
   -- use 'uga-rosa/luasnip_open'
   -- use "rafamadriz/friendly-snippets"
   -- use 'Neevash/awesome-flutter-snippets'
   -- use 'zyllus17/flutter-snippets'

   -- option 2: lua
   -- TODO: active lua snippets
   -- use 'uga-rosa/luasnip_open'
   use 'L3MON4D3/LuaSnip'
   use "ayoubelmhamdi/friendly-snippets"
   -- option 3: mix
   -- engeen:
   -- hrsh7th/vim-vsnip[vimScript], L3MON4D3/LuaSnip[lua], coc-snippets[vim-snippets]

   -- <C-j/l> for flutter snippet
   -- use 'Neevash/awesome-flutter-snippets'
   -- use 'hrsh7th/vim-vsnip'
   -- use 'hrsh7th/vim-vsnip-integ'

   -- data sinippets
   -- use "rafamadriz/friendly-snippets"
   -- use 'honza/vim-snippets'
   -- use 'mfussenegger/nvim-dap'
   -- use 'SirVer/ultisnips'

   use 'akinsho/flutter-tools.nvim'
   -- use 'junegunn/fzf.vim'  -- write by vimScript languages
   use 'windwp/nvim-autopairs'
   use 'blackCauldron7/surround.nvim'


 -- theme+line
   use {"npxbr/gruvbox.nvim", requires = {"rktjmp/lush.nvim"}}
   use 'lukas-reineke/indent-blankline.nvim'
   -- use {'morhetz/gruvbox'}
   -- use {'tjdevries/colorbuddy.vim'}
   -- use {'tjdevries/gruvbuddy.nvim'}

   -- Tabline
   -- use 'akinsho/nvim-bufferline.lua'
   use 'romgrk/barbar.nvim'

   -- Status line
   use 'hoob3rt/lualine.nvim'
   -- use 'kosayoda/nvim-lightbulb'
   -- use 'beauwilliams/statusline.lua'


-- Misc
   use '907th/vim-auto-save' -- auto save files like dart
   use 'rmagatti/auto-session' -- save session layout
   use 'rmagatti/session-lens' -- save session layout with telescope
   use 'tpope/vim-fugitive'
   use 'airblade/vim-rooter'
   -- use 'ahmedkhalf/lsp-rooter.nvim' -- chaneg workin directory
   use 'tpope/vim-commentary'
   -- use 'lewis6991/spellsitter.nvim'
   use 'tjdevries/train.nvim'
   use 'phaazon/hop.nvim'
   use "folke/todo-comments.nvim"
   -- REGISTRE
   --use 'gennaro-tedesco/nvim-peekup'
   --Or
   --use "tversteeg/registers.nvim"



end)



vim.cmd([[autocmd BufWritePost plugins.lua source <afile> | PackerCompile]])



-- NOTE: : <cmd> TodoTrouble TodoTelescope TodoQuickFix
-- TODO:
-- HACK:
-- WARN:
-- PERF:
