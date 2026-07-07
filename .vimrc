syntax enable
filetype plugin indent on

set softtabstop=4
set shiftwidth=4
set bg=dark
set display=lastline
set mouse=
set belloff=all

set pastetoggle=<F2>

set ignorecase
set smartcase
set hlsearch
set incsearch

set wildmenu
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set lazyredraw
set showmatch
set mat=5
set ai
set matchpairs+=<:>
set ttimeoutlen=100

set laststatus=2
if &t_Co >= 256
    hi StatusLine   ctermbg=236 cterm=NONE ctermfg=250
    hi StatusLineNC ctermbg=234 cterm=NONE ctermfg=240
endif
let &statusline  = ' %n  %<%f'
let &statusline .= '%#ErrorMsg#%m%*%r'
let &statusline .= '%='
let &statusline .= '%{&ff==#"unix" ? "" : "[".&ff."] "}'
let &statusline .= ' %y  %5l/%L:%-3v  %P '

augroup custom
    autocmd!
    autocmd BufNewFile,BufRead Makefile.* set filetype=make
    autocmd FileType yaml setlocal ai ts=2 sts=2 sw=2 expandtab
augroup END
