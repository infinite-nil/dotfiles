syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

" Plugins
call plug#begin('~/.vim/plugged')

" Theme
Plug 'arcticicestudio/nord-vim'

" Git
Plug 'tpope/vim-fugitive'

" Typescript
Plug 'leafgarland/typescript-vim'

" Finder
Plug 'git@github.com:ctrlpvim/ctrlp.vim.git'

" Code completion
Plug 'git@github.com:ycm-core/YouCompleteMe.git'


call plug#end()

colorscheme nord
set background=dark

" CtrlP ignore files from .gitignore
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
