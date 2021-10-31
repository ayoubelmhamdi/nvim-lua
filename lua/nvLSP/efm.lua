local luaf = {
    formatCommand = "lua-format -i --no-keep-simple-function-one-line --no-break-after-operator --column-limit=150 --break-after-table-lb",
    formatStdin = true
}

local autopep = {formatCommand = 'autopep8 -', formatStdin = true}
local isort = {formatCommand = "isort --quiet -", formatStdin = true}
local black = {formatCommand = "black --quiet -", formatStdin = true}
local yapf = {formatCommand = "yapf --quiet", formatStdin = true}

local clangf = {formatCommand = "clang-format", formatStdin = true}
local latexindent = {formatCommand = "latexindent", formatStdin = true}
local cmakef = {formatCommand = 'cmake-format', formatStdin = true}
local prettier = {formatCommand = "prettier --stdin-filepath ${INPUT}", formatStdin = true}

local shfmt = {formatCommand = 'shfmt -ci -s -bn', formatStdin = true}
local shellcheck = {LintCommand = 'shellcheck -f gcc -x', lintFormats = {'%f:%l:%c: %trror: %m', '%f:%l:%c: %tarning: %m', '%f:%l:%c: %tote: %m'}}

local markdownf =  { formatCommand = "pandoc -f markdown -t gfm -sp --tab-stop=4", formatStdin = true }




require"lspconfig".efm.setup {

    cmd = {"efm-langserver"},
    init_options = {documentFormatting = true, codeAction = false},
    filetypes = {"tex", "lua", "python", "cpp", "sh", "json", "yaml", "css", "html"},
    settings = {
        rootMarkers = {".git/"},
        languages = {
            python = {autopep, isort, black, yapf},
            lua = {luaf},
            tex = {latexindent},
            sh = {shellcheck, shfmt},
            cmake = {cmakef},
            html = {prettier},
            css = {prettier},
            json = {prettier},
            yaml = {prettier},
            cpp = {clangf},
            markdown= {markdownf},
        }
    }
}
