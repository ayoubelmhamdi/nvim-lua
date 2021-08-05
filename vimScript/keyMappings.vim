nnoremap <space>ca  <cmd>lua vim.lsp.buf.code_action()<CR>
nnoremap <space>rn  <cmd>lua vim.lsp.buf.rename()<CR>
nnoremap <space>ff  <cmd>lua vim.lsp.buf.formatting()<CR>


nnoremap gD         <Cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap gd         <Cmd>lua vim.lsp.buf.definition()<CR>
nnoremap gi         <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap gr         <cmd>lua vim.lsp.buf.references()<CR>
nnoremap [d         <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap ]d         <cmd>lua vim.lsp.diagnostic.goto_next()<CR>

nnoremap <C-space>k      <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <space>K   <Cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <space>wa  <cmd>lua vim.lsp.buf.add_workspace_folder()<CR>
nnoremap <space>wr  <cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>
nnoremap <space>wl  <cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>
nnoremap <space>D   <cmd>lua vim.lsp.buf.type_definition()<CR>
nnoremap <space>e   <cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>
nnoremap <space>q   <cmd>lua vim.lsp.diagnostic.set_loclist()<CR>

nnoremap <Space>h   :set hlsearch!<cr>
nnoremap <Space>e   :Lexplore<cr>
nnoremap <Tab>      :bn<cr>
nnoremap <S-Tab>    :bp<cr>


" delet last word/sentens/line it's work  if use save point bellow 
" inoremap <C-u> <C-g>u<C-u>

"mapping by vim scripte
inoremap ) )<c-g>u
inoremap ] ]<c-g>u
inoremap } }<c-g>u
inoremap ? ?<c-g>u
inoremap ! !<c-g>u

cnoremap W w
cnoremap Q q

nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

function! Quitwindows()
    let s:total_nr_buffers = len(filter(range(1, bufnr('$')), 'buflisted(v:val)'))
    if  s:total_nr_buffers == 1
      "bufname(0) == ''
      " bufexists(0) &&
      exit! 
      echo "vide"
    else
      bw
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

" :on<cr>:tabn<cr>
" nnoremap <silent> <Space>fr :FlutterRun<cr>
" nnoremap <silent> <Space>ft :FlutterRestart<cr>
" nnoremap <silent> <Space>fp :FlutterPubGet<cr>
" nnoremap <silent> <Space>fq :FlutterQuit<cr>

nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-h> <C-w><C-h>

nnoremap <C-up> :resize +2<cr>
nnoremap <C-down> :resize -2<cr>
nnoremap <C-left> :vertical resize -2<cr>
nnoremap <C-right> :vertical resize +2<cr>

"
" nnoremap <Space>q :bdelete<cr>


" remove word

" Basic file system commands
" nnoremap <A-o> :!touch<Space>
" nnoremap <A-e> :!crf<Space>
" nnoremap <A-d> :!mkdir<Space>
" nnoremap <A-m> :!mv<Space>%<Space>

" fix p y
nnoremap Y y$
nnoremap V V$h
" save and source this file if vim so% of lua lo%
nnoremap <Space>w :w<cr>
" fast exist in insert  mode
inoremap <C-space><C-space> <esc>


" Alias replace all to
vnoremap <A-s> y:%s///g<Left><Left><Left><C-r>0<right>
vnoremap <C-s> y:s///g<Left><Left><Left><C-r>0<right>

" _co is best than c i dont know why

" Prevent x from overriding what's in the clipboard.
" use this tow symbole "_ after motion, 
xnoremap x "_x
xnoremap X "_X
xnoremap c "_c
xnoremap C "_C

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


" Move 1 more lines up or down in normal and visual selection modes.
vnoremap K :m '<-2<CR>gv=gv
vnoremap J :m '>+1<CR>gv=gv
inoremap <C-space>k <C-o>:m .-2<CR>
inoremap <C-space>j <C-o>:m .+1<CR>
nnoremap <Space>k :m .-2<CR>==
nnoremap <Space>j :m .+1<CR>==
