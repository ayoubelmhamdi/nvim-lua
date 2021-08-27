vim.cmd([[autocmd BufWritePost mytelescope.lua source <afile>]])

local action_state = require('telescope.actions.state')
require('telescope').setup{
    defaults ={
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
    }
}


-- To get fzf loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
require('telescope').load_extension('fzf')


local M = {}

M.first = function ()
  local opt= require('telescope.themes').get_ivy({
          sorting_strategy="ascending"
        })
  require('telescope.builtin').current_buffer_fuzzy_find(opt)
end

function M.grep_prompt()
  require("telescope.builtin").grep_string {
    path_display = { "shorten" },
    -- search = vim.fn.input "Rg ",
    search = vim.fn.input "Rg> ",
  }
end

function M.find_files()
  require("telescope.builtin").find_files {
    prompt_title = " NVim & Term Config Find",
    results_title = "Config Files Results",
    path_display = { "shorten" },
    search_dirs = {
      "/mega",
      "~/.config/alacritty",
    },
    cwd = "~/.config/nvim/",
    layout_strategy = "horizontal",
    layout_config = { preview_width = 0.65, width = 0.75 },
  }
end


return M
