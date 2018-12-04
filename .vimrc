" ~/.vimrc
" Contains Vim configuration options

" Autocmd {{{
autocmd BufWritePre * :%s/\s\+$//e
autocmd VimEnter * set indentexpr=
" }}}
" Folding {{{

set foldenable
set foldlevelstart=99
set foldmethod=indent

" }}}
" Miscellaneous {{{

set backspace=indent,eol,start
set cm=blowfish2
set encoding=UTF-8

" }}}
" Plugins {{{

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'dbeniamine/cheat.sh-vim'
Plugin 'dylanaraps/wal.vim'
Plugin 'junegunn/goyo.vim'
Plugin 'junegunn/limelight.vim'
  autocmd! User GoyoEnter Limelight
  autocmd! User GoyoLeave Limelight!
  let g:limelight_conceal_ctermfg = 'gray'

Plugin 'scrooloose/nerdtree'
  let g:NERDTreeDirArrowExpandable = '>'
  let g:NERDTreeDirArrowCollapsible = 'v'

Plugin 'scrooloose/syntastic'

call vundle#end()
filetype plugin indent on

" }}}
" Searching {{{

set ignorecase
set incsearch

" }}}
" Tabs {{{

set expandtab
set tabstop=4
set shiftwidth=4

" }}}
" Temporary Files {{{

set nobackup
set noswapfile
set noundofile
set nowritebackup
set viminfo=

" }}}
" UI {{{

colorscheme wal
set lazyredraw
set nowrap
set number
set ruler
set visualbell
set wildmenu
syntax on

" }}}

" vim:foldmethod=marker:foldlevel=0
