local M = {}
M.search_dotfiles = function()
    require('telescope.builtin').find_files({
        file_ignore_patterns = {'.git/'},
        prompt_title = '< VimRC > ',
        cwd = vim.env.DOTFILES,
        hidden = true
    })
end

return M
