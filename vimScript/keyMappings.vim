" LSP
nnoremap <Space>ca  <cmd>lua vim.lsp.buf.code_action()<CR>
nnoremap <Space>rn  <cmd>lua vim.lsp.buf.rename()<CR>
" nnoremap <Space>f   <cmd>lua vim.lsp.buf.formatting()<CR>
nnoremap <Space>f   <cmd>lua vim.lsp.buf.formatting_seq_sync()<CR>
nnoremap <space>K   <Cmd>lua vim.lsp.buf.hover()<CR>


nnoremap gD         <Cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap gd         <Cmd>lua vim.lsp.buf.definition()<CR>
nnoremap gr         <cmd>lua vim.lsp.buf.references()<CR>
nnoremap [d         <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap ]d         <cmd>lua vim.lsp.diagnostic.goto_next()<CR>

nnoremap gi         <cmd>lua vim.lsp.buf.implementation()<CR>

nnoremap <space>kk      <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <space>wa  <cmd>lua vim.lsp.buf.add_workspace_folder()<CR>
nnoremap <space>wr  <cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>
nnoremap <space>wl  <cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>
nnoremap <space>D   <cmd>lua vim.lsp.buf.type_definition()<CR>
nnoremap <space>le   <cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>

"nnoremap <silent> <space>ll <cmd>lua vim.lsp.diagnostic.set_loclist()<CR>
nnoremap <silent> <Space>lq <cmd>QFToggle!<CR>

" :remove-me:
nnoremap <Space>r :TexlabBuild<CR>
nnoremap <Space>z :!zathura %:r.pdf & disown<CR><CR>

" make
"nnoremap ll :vs<cr>:term ./suckless/statusbar<cr><cr>touch 

" Telescope:
autocmd FileType dart nnoremap <Space>o :Telescopefindfiledart<cr>
autocmd TermOpen * setlocal nonu nornu | startinsert

nnoremap     <M-m>    <cmd>lua require('nvPlugins.mytelescope').gl()<cr>
nnoremap <Space>o     :Telescopefy<cr>
nnoremap <Space>fg    <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <Space>      <cmd>lua require('telescope.builtin').find_files({ find_command = { 'fd','--type','file'}})  <cr>
nnoremap <Space>fb    <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <Space>fh    <cmd>lua require('telescope.builtin').help_tags()<cr>
nnoremap <Space>fs    :Telescope current_buffer_fuzzy_find<cr>


nnoremap <Space>fd    :lua require('tsp.cwd-tsp').search_dotfiles()<cr> 
nnoremap <Space>fn    :lua require('tsp.cwd-tsp').search_nvim()<cr> 
nnoremap <Space>fw    :lua require('tsp.cwd-tsp').search_wiki()<cr> 
nnoremap <Space>1    :lua require('tsp.cwd-tsp').search_proj("sl")<cr> 
nnoremap <Space>2    :lua require('tsp.cwd-tsp').search_proj("slstatus")<cr> 

" Hop
nnoremap <Space><Space> :HopChar2<cr>

" Train
nnoremap <Space>tl :TrainUpDown<cr>
nnoremap <Space>tw :TrainWord<cr>
nnoremap <Space>t  :TrainTextObj<cr>

nnoremap <Esc>      :set nohlsearch!<cr>
nnoremap <Space>ee  :Lexplore<cr>
nnoremap <Tab>      :bn<cr>
nnoremap <S-Tab>    :bp<cr>

cnoremap <C-A> <Home>

nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

function! Quitwindows()
    let s:total_nr_buffers = len(filter(range(1, bufnr('$')), 'buflisted(v:val)'))
    if  s:total_nr_buffers == 1
      exit! 
      echo "vide"
    else
      bw!
    endif
endfunction
nnoremap <silent> <Space>q :call Quitwindows()<cr>

" TODO: use ftPlugin to manage dart file
" flutter: key
inoremap <C-space>/ <cr><C-o>O<TAB>
inoremap <C-space>c color:<Space>Colors.
inoremap <C-space>b backgroundColor:<Space>Colors.
inoremap <C-space>, <Space>,<Left>
inoremap <C-space><C-,> <Right>,oo<Left><Left>

" FLUTTER
nnoremap <silent> <Space>fp :FlutterPubGet<cr>
" nnoremap <silent> <Space>fr :FlutterRun<cr>
" nnoremap <silent> <Space>ft :FlutterRestart<cr>
" nnoremap <silent> <Space>fq :FlutterQuit<cr>

nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-h> <C-w><C-h>

nnoremap <C-up> :resize +2<cr>
nnoremap <C-down> :resize -2<cr>
nnoremap <C-left> :vertical resize -2<cr>
nnoremap <C-right> :vertical resize +2<cr>



" Basic file system commands
" nnoremap <A-o> :!touch<Space>
" nnoremap <A-e> :!crf<Space>
" nnoremap <A-d> :!mkdir<Space>
" nnoremap <A-m> :!mv<Space>%<Space>

" fix p y
nnoremap gn :tabnew<CR>
nnoremap s <Nop>
nnoremap Y y$
nnoremap V V$h
nnoremap <C-q> :q<cr>
nnoremap <C-s> :wq<cr>
nnoremap <Space>w :w<cr>
inoremap <C-space><C-space> <esc>


" Alias replace all to
nnoremap <A-s> :s#\<<C-r>=expand("<cword>")<CR>\>#<C-r>=expand("<cword>")<CR> 
vnoremap <C-r> "hy:%s/<C-r>h/
" vnoremap <A-s> y:%s///g<Left><Left><Left><C-r>0<right>

" _co is best than c i dont know why

" Prevent x from overriding what's in the clipboard.
" use this tow symbole "_ after motion, 
snoremap x "_x
snoremap X "_X
snoremap c "_c
snoremap C "_C

vnoremap x "_x
vnoremap X "_X
vnoremap c "_c
vnoremap C "_C

nnoremap x "_x
nnoremap X "_X
nnoremap c "_c
nnoremap C "_C

" Prevent selecting and pasting from overwriting what you originally copied.
xnoremap p pgvy

" Keep cursor at the bottom of the visual selection after you yank it.
" vmap y ygv<Esc>

" TTT: changr indent original tab to
nnoremap > v>
nnoremap < v<
vnoremap > >gv
vnoremap < <gv



" Make sure all types of requirements.txt files get syntax highlighting.
autocmd BufNewFile,BufRead requirements*.txt set syntax=python



" dd = dd+1
" nnoremap 3dd 4dd
" nnoremap 4dd 5dd
" nnoremap 5dd 6dd
" nnoremap 6dd 7dd
" nnoremap 7dd 4dd
" nnoremap 8dd 9dd
" nnoremap 9dd 10dd


" Move : 
nnoremap <silent> <A-j> :MoveLine(1)<CR>
nnoremap <silent> <A-k> :MoveLine(-1)<CR>

vnoremap <silent> <A-j> :MoveBlock(1)<CR>
vnoremap <silent> <A-k> :MoveBlock(-1)<CR>

" Move 1 more lines up or down in normal and visual selection modes.
" vnoremap K :m '<-2<CR>gv=gv
" vnoremap J :m '>+1<CR>gv=gv
" inoremap <C-space>k <C-o>:m .-2<CR>
" inoremap <C-space>j <C-o>:m .+1<CR>
" nnoremap <Space>k :m .-2<CR>==
" nnoremap <Space>j :m .+1<CR>==
" nnoremap <Space>m :m .+==<Left><Left>

"Lets me select moving by number.
" nnoremap <Space>k :m .-2==<Left><Left>
" nnoremap <Space>j :m .+1==<Left><Left>

" Command 
command! Telescopefindfiledart lua require("telescope.builtin").find_files({find_command = {"fd","--type","f","-E","*.lock","-E","ios","-E","android","-E","test","-E","build","-E","web","-E","linux","-E","*.png","-E","*.jpg","-E","*.md"}})
command! Ps PackerSync
command! Pi PackerInstall
command! Pc PackerClean
command! Telescopefy Telescope frecency default_text=:CWD: 
command! Reloader lua require('telescope').reloader()
command! W w
command! Q q
command! WQ wq
command! Wq wq
