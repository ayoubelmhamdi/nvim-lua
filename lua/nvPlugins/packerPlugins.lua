


local use = require('packer').use
require('packer').startup(
function()
-- Testing:  


-- Dependencies:
   use 'wbthomason/packer.nvim'
   use 'nvim-lua/popup.nvim'
   use 'nvim-lua/plenary.nvim'
   use 'ojroques/nvim-lspfuzzy'
   use 'nvim-treesitter/nvim-treesitter'
   use 'nvim-treesitter/playground' --viewer
   use 'nvim-telescope/telescope.nvim'
   use 'sudormrfbin/cheatsheet.nvim'
   use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
   use 'nvim-telescope/telescope-frecency.nvim'
   use 'kyazdani42/nvim-web-devicons'
   use 'tami5/sql.nvim'
   -- use 'nvim-telescope/telescope-project.nvim'

-- LSP+IDE
   use 'neovim/nvim-lspconfig'
   use 'hrsh7th/nvim-compe'
   use 'stevearc/qf_helper.nvim'

   use 'L3MON4D3/LuaSnip'
   -- use "ayoubelmhamdi/friendly-snippets"

   use 'akinsho/flutter-tools.nvim'
   use 'windwp/nvim-autopairs'
   use 'blackCauldron7/surround.nvim'


 -- theme+line
   use {"npxbr/gruvbox.nvim", requires = {"rktjmp/lush.nvim"}}
   use 'lukas-reineke/indent-blankline.nvim'
   use 'akinsho/nvim-bufferline.lua'
   use 'hoob3rt/lualine.nvim'
   -- use 'romgrk/barbar.nvim'



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
   -- startup imprevment to be speed
   use {'lewis6991/impatient.nvim', rocks = 'mpack'}
   -- select funcion
   use 'kana/vim-textobj-user'
   use 'kana/vim-textobj-function'
   use 'kamichidu/vim-textobj-function-go'
   use 'thinca/vim-textobj-function-javascript'
   -- use 'haya14busa/vim-textobj-function-syntax' " work with go bat not perfect


end)



vim.cmd([[autocmd BufWritePost packerPlugins.lua source <afile> | PackerCompile]])



-- NOTE: : <cmd> TodoTrouble TodoTelescope TodoQuickFix
-- TODO:
-- HACK:
-- WARN:
-- PERF:
