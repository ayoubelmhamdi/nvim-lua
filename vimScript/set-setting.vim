"  ____  _____ _____      ___  ____ _____ ___ ___  _   _ 
" / ___|| ____|_   _|    / _ \|  _ \_   _|_ _/ _ \| \ | |
" \___ \|  _|   | |_____| | | | |_) || |  | | | | |  \| |
"  ___) | |___  | |_____| |_| |  __/ | |  | | |_| | |\  |
" |____/|_____| |_|      \___/|_|    |_| |___\___/|_| \_|
                                                       


syntax on " -- syntax highlighting
set iskeyword+=- "  -- treat dash separated words as a word text object"
set shortmess+=c "  -- Don't pass messages to |ins-completion-menu|.
set inccommand=split " -- Make substitution work in realtime
set whichwrap+=<,>,[,],h,l " -- move to next line with theses keys
set ts=4 " -- Insert 4 spaces for a tab
set sw=4 " -- Change the number of space characters inserted for indentation






set nowrap 
set autoindent
set smartindent	

set tabstop=4 
set softtabstop=4
set shiftwidth=2
set expandtab
set smarttab

set backspace=indent,eol,start
set colorcolumn=60
set scrolloff=7

set mouse=a
set updatetime=300
" Ignore these files when completing
set wildignore+=*.o,*.obj,.git,*.pyc
set wildignore+=eggs/**
set wildignore+=*.egg-info/**

set directory=$HOME/.local/vim/dir/,.

set noswapfile
set nowritebackup

set backupdir=$HOME/.local/vim/backup
set nobackup

set undodir+=$HOME/.local/vim/undodir
set undofile



"""""dis now
""""" set foldmethod=manual
""""set formatprg=prettier
""""set ignorecase
""""set incsearch
""""set linebreak
""""set nohlsearch
""""set showtabline=2
""""set smartcase



""""set autoread
""""set complete+=kspell
""""set formatoptions=cro
""""set go=a
""""set laststatus=2
""""set matchpairs+=<:>
""""set mmp=5000
""""set modelines=2
""""set noerrorbells visualbell t_vb=
""""set noshiftround
""""set nospell
""""set nostartofline
""""set pumheight=10
""""set regexpengine=1
""""set ruler
""""set shortmess+=c
""""set showcmd
""""set showmatch
""""set showmode
""""set spelllang=en_us
""""set textwidth=0
""""set timeoutlen=900
""""set ttimeout
""""set ttimeoutlen=0
""""set whichwrap=b,s,<,>
""""set wildmenu
""""set wildmode=longest,list,full
""""set virtualedit=block



"""""tow line for schow error
""""set cmdheight=2
""""" set endofline
""""" set list
""""" set listchars=tab:>-,eol:¶

""""" set tw=0
""""" set wm=0
""""" using only 1 column (and 1 space) while possible
""""" set numberwidth=1
""""" set nolazyredraw
""""" set listchars=tab:>.,trail:.,precedes:<,extends:>
