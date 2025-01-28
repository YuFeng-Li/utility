set t_Co=256
syntax enable
syntax on


au BufNewFile,BufRead *.cu set ft=cuda
au BufNewFile,BufRead *.cuh set ft=cuda
filetype plugin indent on

set cursorline
hi CursorLine cterm=none ctermbg=DarkMagenta ctermfg=White
set cursorcolumn
hi CursorColumn cterm=none ctermbg=DarkMagenta ctermfg=White

set incsearch
set smartcase
set hlsearch
hi Search cterm=reverse ctermbg=none ctermfg=none

set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

set nobackup
set undodir=~/.vim/undodir
set undofile

set relativenumber
set noerrorbells
set ruler
set cindent
set showmatch

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'junegunn/fzf', { 'dir': '~/opt/fzf' }
Plug 'junegunn/fzf.vim'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'leafgarland/typescript-vim'
Plug 'vim-utils/vim-man'
Plug 'lyuts/vim-rtags'
Plug 'https://github.com/kien/ctrlp.vim.git'
Plug 'mbbill/undotree'
Plug 'https://github.com/miyakogi/seiya.vim.git'
Plug 'fcpg/vim-fahrenheit'
Plug 'https://github.com/xavierd/clang_complete.git'
Plug 'https://github.com/itchyny/vim-grep.git'
call plug#end()

set background=dark
colorscheme gruvbox
let g:seiya_auto_enable=1
hi CursorLineNr ctermfg=45 cterm=bold

nnoremap <silent> <C-p> :Files<CR>
nnoremap <silent> <C-g> :GFiles<CR>
nnoremap <silent> <C-o> :Buffers<CR>
nnoremap <silent> <C-d> :SeiyaEnable<CR> <bar> :colorscheme fahrenheit<CR>
nnoremap <silent> <C-e> :SeiyaDisable<CR> <bar> :colorscheme gruvbox<CR>
nnoremap <silent> <C-f> :vsplit<CR>
nnoremap <silent> <C-e> :split<CR>
