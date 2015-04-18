" Vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'terryma/vim-expand-region'
Plugin 'vim-scripts/gitignore'
Plugin 'kien/ctrlp.vim'
Plugin 'tomtom/tcomment_vim'
Plugin 'phildawes/racer'
call vundle#end()

filetype plugin indent on

" Config
set tabstop=4
set shiftwidth=4
set smartindent

set number
set ignorecase
set smartcase
set showcmd
set incsearch
set whichwrap=<,>,[,],h,l
set suffixes=.o,.swp,.bak,.png,.jpg
set laststatus=2

set backupdir=~/.vim/tmp,~/tmp
set dir=~/.vim,~/tmp
set directory=.vim/tmp,/tmp

let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_enable_diagnostic_signs = 0

let g:airline_powerline_fonts = 1

let g:racer_cmd = "/home/johan/.vim/bundle/racer/target/release/racer"
let $RUST_SRC_PATH="/home/johan/Documents/Builds/rust/src/"

let mapleader = "\<Space>"

nnoremap <Leader>z :w<CR>
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

noremap  <C-w>h
noremap  <C-w>l
noremap  <C-w>k
noremap  <C-w>j

" Map Control-Arrow keys to move by word
map <ESC>[1;5D <C-Left>
map <ESC>[1;5C <C-Right>
map! <ESC>[1;5D <C-Left>
map! <ESC>[1;5C <C-Right>

if !has('gui_running')
  set t_Co=256
endif

if has("gui_running")
    inoremap <C-Space> <C-n>
else
  if has("unix")
    inoremap <Nul> <C-n>
  endif
endif

" if has('mouse')
" 	set mouse=a
" endif

syntax on
colorscheme ChocolatePapaya
let g:airline_theme='powerlineish'
