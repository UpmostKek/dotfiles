" General Settings

set nowrap                               " Disables line wrapping
set noruler                              " Disables the ruler
set visualbell                           " Disables beeping sound
set ignorecase                           " Disables case-sensitive searches

syntax on                                " Enables syntax highlighting

set expandtab                            " Converts tabs to spaces
set tabstop=2                            " Sets the tab width
set shiftwidth=2                         " Sets the shift width

set viminfo=                             " Disables writing to viminfo files
set nobackup                             " Disables writing to backup files
set noswapfile                           " Disables writing to swap files
set noundofile                           " Disables writing to undo files
set nowritebackup                        " Disables writing to backup files

set encoding=UTF-8                       " Enables editing in UTF-8
set backspace=indent,eol,start           " Deletes to EOL
set cm=blowfish2                         " Sets the algorithm used when
                                         " encrypting files



" Miscellaneous Settings

autocmd BufWritePre * :%s/\s\+$//e       " Deletes trailing whitespace on save
autocmd VimEnter * set indentexpr=       " Disables unwanted unindentation



" Plugins

call plug#begin('~/.vim/plugged')        " Specifies the plugin directory

Plug 'junegunn/goyo.vim'                 " Adds a 'focused mode'
Plug 'scrooloose/syntastic'              " Adds syntax highlighting
Plug 'junegunn/limelight.vim'            " Highlights only the paragraph being
Plug 'dbeniamine/cheat.sh-vim'           " Enables cht.sh support
                                         " edited

call plug#end()                          " Initializes the plugin system



" Plugin Settings

" limelight.vim
autocmd! User GoyoEnter Limelight        " Enables limelight when goyo is
                                         " active
autocmd! User GoyoLeave Limelight!       " Disables limelight when goyo is
                                         " inactive
let g:limelight_conceal_ctermfg = 'gray' " Colors unhighlighted paragraphs gray

