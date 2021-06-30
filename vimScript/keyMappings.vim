"
"mapping by vim scripte
"


nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-h> <C-w><C-h>


" Basic file system commands
" nnoremap <A-o> :!touch<Space>
" nnoremap <A-e> :!crf<Space>
" nnoremap <A-d> :!mkdir<Space>
" nnoremap <A-m> :!mv<Space>%<Space>

" fix p y
nnoremap Y y$
nnoremap V V$h
nnoremap <Space>w :w<cr>
" fast exist in insert  mode
inoremap jj <esc>


" Alias replace all to
vnoremap <A-s> y:s///gI<Left><Left><Left><Left><C-r>0

" _co is best than c i dont know why
" nnoremap c "_c

" Prevent x from overriding what's in the clipboard.
" use this tow symbole "_ after motion, 
noremap x "_x
noremap X "_X

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
nnoremap 3dd 4dd
nnoremap 4dd 5dd
nnoremap 5dd 6dd
nnoremap 6dd 7dd
nnoremap 7dd 4dd
nnoremap 8dd 9dd
nnoremap 9dd 10dd


" Move 1 more lines up or down in normal and visual selection modes.
nnoremap K :m .-2<CR>==
nnoremap J :m .+1<CR>==
vnoremap K :m '<-2<CR>gv=gv
vnoremap J :m '>+1<CR>gv=gv


