" ~/.vimrc
" Contains Vim configuration options

" Autocmd {{{

    augroup General
        au!
        autocmd BufWritePre * :%s/\s\+$//e
        autocmd VimEnter * set indentexpr=
    augroup END

" }}}

" Encoding {{{

    scriptencoding utf-8
    set encoding=utf-8

" }}}

" Folding {{{

    set foldenable
    set foldlevelstart=99
    set foldmethod=indent

" }}}

" Miscellaneous {{{

    set backspace=indent,eol,start
    "set cm=blowfish2

" }}}

" Plugins {{{

    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()

    Plugin 'VundleVim/Vundle.vim'

    Plugin 'dylanaraps/wal.vim'
    Plugin 'junegunn/goyo.vim'
    Plugin 'mboughaba/i3config.vim'
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
    set shiftwidth=4
    set tabstop=4

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
    set relativenumber
    set ruler
    set splitbelow
    set splitright
    set visualbell
    set wildmenu
    syntax on

" }}}

" vim:foldmethod=marker:foldlevel=0
