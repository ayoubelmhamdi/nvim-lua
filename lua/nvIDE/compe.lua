---
-- view vimscpite config :
-- ~/.config/nvim/vimScript/confPlugins/autocomplition.vim

-- Set completeopt to have a better completion experience
vim.o.completeopt = "menuone,noselect"

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true;

require'compe'.setup {

  enabled = true; 
  autocomplete = true;
  debug = false;
  min_length = 1;
  preselect = 'enable';
  throttle_time = 80;
  source_timeout = 200;
  resolve_timeout = 800;
  incomplete_delay = 400;
  max_abbr_width = 100; -- name of first fild (real name like if,for,satateless..)
  max_kind_width = 20; -- name of kind     (class propriete dir)
  max_menu_width = 20; -- name of operator (LSP/vsnip/plugin)
  documentation = {
    border = { '', '' ,'', ' ', '', '', '', ' ' }, -- the border option is the same as `|help nvim_open_win|`
    winhighlight = "NormalFloat:CompeDocumentation,FloatBorder:CompeDocumentationBorder",
    max_width = 120,
    min_width = 60,
    max_height = math.floor(vim.o.lines * 0.3),
    min_height = 1,
  };

  source = {
    path       = {kind = "  "},
    buffer     = {kind = "  ",priority = 800},
    calc       = {kind = "  "},
    nvim_lsp   = {kind = "  ",priority = 800},
    nvim_lua   = {kind = "  "};
    tags       = true,
    spell      = {kind = "  "},
    treesitter = {kind = "  "},
    emoji      = {kind = " ﲃ ", filetypes={"markdown"}},
    --
    luasnip    = {kind = "  ", priority = 1000},
    vsnip      = false,   --{kind = "  ", priority = 1000},
    ultisnips  = false,

    -- sort=false,
  };

}

-- we don't need setting for vsnip;
-- we need mapping for comp and vsnip for work





