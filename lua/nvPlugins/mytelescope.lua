-- vim.cmd([[autocmd BufWritePost mytelescope.lua luafile%]])
-- aa bb cc
-- aabbaa  1 bb2 3cc 4aa

local action_state = require('telescope.actions.state')
require('telescope').setup{
    defaults ={
        prompt_prefix = " ",
        selection_caret = " ",
        sorting_strategy = "ascending",
        layout_strategy = "horizontal",
        layout_config = {
          prompt_position="top",
          height = 0.90,
          width  = 0.90,
          preview_width = 0.60,
        },
        --layout_config = {
        --  prompt_position = "top",
        --  horizontal = {mirror = false},
        --  vertical = {mirror = false},
        --  --width = 0.75,
        --  --preview_cutoff = 120,
        --},
        -- layout_config = {
        --   prompt_position="top"
        -- },
        mappings = {
            i = {
                ["<c-a>"]= function ()
                   print(vim.inspect(action_state.get_selected_entry()))
                   -- Glow $this selecteda by <c-a> or <cr>
                end
            }
        },
    },
     extensions = {
       fzf = {
          fuzzy = true,                    -- false will only do exact matching
          override_generic_sorter = false, -- override the generic sorter
          override_file_sorter = true,     -- override the file sorter
          case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
          },
       frecency = {
          db_root = "/mega/repo/dotfiles/telescope-frency",
          show_scores = false,
          show_unindexed = false,
          ignore_patterns = {
            "*.git/*",
            "*/tmp/*",
            "*/lua-language-server/*",
            "*/.local/share/*",
            "/[^mega,root,home,opt,projects]*/*",
          },
          disable_devicons = false,
          -- workspaces = {
          --   ["conf"]    = "~/.config",
          --   ["nvim"]    = "~/.config/nvim",
          --   ["project"] = "/projects",
          --   ["wiki"]    = "/mega/repo",
          --   }
          },
      }
}
-- clipboard 
require('neoclip').setup({
      history = 1000,
      filter = nil,
      preview = false,
      default_register = '"',
      content_spec_column = false,
      on_paste = {
        set_reg = false,
      },
      keys = {
        i = {
          select = '<c-k>',
          paste = '<cr>',
          paste_behind = '<c-p>',
        },
        n = {
          select = '<cr>',
          paste = 'p',
          paste_behind = 'P',
        },
      },
})


-- test reload telescpe

-- return functions
local M = {}

M.reloader = function()
  local RELOAD = require('plenary.reload').reload_module
    RELOAD('plenary')
    RELOAD('popup')
    RELOAD('telescope')
end

-- function M.find_files()
--   require("telescope.builtin").find_files {
--     prompt_title = " NVim & Term Config Find",
--     results_title = "Config Files Results",
--     path_display = { "shorten" },
--     search_dirs = {
--       "/mega",
--       "~/.config/alacritty",
--     },
--     cwd = "~/.config/nvim/",
--     layout_strategy = "horizontal",
--     layout_config = { preview_width = 0.65, width = 0.75 },
--   }
-- end


M.gl = function()
  local action_set = require "telescope.actions.set"
  local actions = require "telescope.actions"
  local previewers = require('telescope.previewers')
  return require'telescope.builtin'.fd {
      prompt_title = "|> ::foonv:: <|",
      shorten_path = false,
      cwd = "/mega/repo",
      -- previous
      previewer = previewers.new_termopen_previewer {
        get_command = function(selection)
          return { 'glow', "/mega/repo/" .. selection.value }
        end
      },
      -- opener
      attach_mappings = function(prompt_bufnr)
          action_set.select:replace( function(_, cmd)
              local selection = action_state.get_selected_entry()
              actions.close(prompt_bufnr)
              if cmd == "default" or cmd == "horizontal" then
                vim.cmd("term glow /mega/repo/"  .. selection.value)
              elseif cmd == "vertical" then
                vim.cmd("vs | term glow /mega/repo/" .. selection.value)
              end
          end) -- end replace function
      return true -- attach_mappings return true
      end, -- end attach_mappings
  }
end

M.gf = function ()
  return require("telescope.builtin").fd {
    require"telescope.themes".get_dropdown {
      winblend = 8,
      previewer = false,
      results_height = 30,
      width = 90
    },
  }
end

-- must require after telescope config
-- if load before/ba3da telescope config
-- this plugin not detected by telecsope correctly
-- so i cant't use ignore file or use smaret case ...
require"telescope".load_extension("fzf")
require"telescope".load_extension("frecency")
require('telescope').load_extension('neoclip')
return M
