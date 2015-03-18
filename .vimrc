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
"Plugin 'Valloric/YouCompleteMe'
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

set backupdir=~/.vim/tmp,~/tmp
set dir=~/.vim,~/tmp
set directory=.vim/tmp,/tmp

let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_enable_diagnostic_signs = 0

let mapleader = "\<Space>"

nnoremap <Leader>z :w<CR>
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

if has("gui_running")
    inoremap <C-Space> <C-n>
else
  if has("unix")
    inoremap <Nul> <C-n>
  else
  " I have no idea of the name of Ctrl-Space elsewhere
  endif
endif

if has('mouse')
	set mouse=a
endif

syntax on
colorscheme industry
