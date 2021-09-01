vim.cmd([[autocmd BufWritePost mytelescope.lua source <afile>]])



local action_state = require('telescope.actions.state')
require('telescope').setup{
    defaults ={
        prompt_prefix ="$$ ",
        extensions = {
            fzf = {
              fuzzy = true,                    -- false will only do exact matching
              override_generic_sorter = false, -- override the generic sorter
              override_file_sorter = true,     -- override the file sorter
              case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
              },
           
        },
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
          show_scores = true,
          show_unindexed = true,
          ignore_patterns = {
            "*.git/*",
            "*/tmp/*",
            "*/lua-language-server/*",
            "*/.local/share/*",
            "/[^mega,root,home,opt,projects]*/*",
          },
          disable_devicons = false,
          workspaces = {
            ["conf"]    = "~/.config",
            ["nvim"]    = "~/.config/nvim",
            ["project"] = "/projects",
            ["wiki"]    = "/mega/repo",
            }
          },
      }
}


-- To get fzf loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
require('telescope').load_extension('fzf')

-- test reload telescpe
local RELOAD = require('plenary.reload').reload_module

local should_reload = true

local M = {}
M.reloader = function()
  if should_reload then
    RELOAD('plenary')
    RELOAD('popup')
    RELOAD('telescope')
  end
end

M.first = function ()
  local opt= require('telescope.themes').get_ivy({
          sorting_strategy="ascending"
        })
  require('telescope.builtin').current_buffer_fuzzy_find(opt)
end

-- function M.grep_prompt()
--   require("telescope.builtin").grep_string {
--     path_display = { "shorten" },
--     -- search = vim.fn.input "Rg ",
--     search = vim.fn.input "Rg> ",
--   }
-- end

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
local action_set = require "telescope.actions.set"
local actions = require "telescope.actions"
local previewers = require('telescope.previewers')

-- M.first = function ()
M.gl = function()

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
          end)
      return true
      end,
  }
end

-- must require after telescope config
-- if load before/ba3da telescope config 
-- this plugin not detected by telecsope correctly
-- so i cant't use ignore file or use smaret case ...
require"telescope".load_extension("fzf")
require"telescope".load_extension("frecency")
return M
