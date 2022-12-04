set nocompatible              " be iMproved, required
filetype off                  " required

set background=dark

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" proper indenting for yaml
Plugin 'avakhov/vim-yaml'

" syntax checking
Plugin 'vim-syntastic/syntastic'

" better haskell support
Plugin 'neovimhaskell/haskell-vim'

" parentheses highlighting
Plugin 'luochen1990/rainbow'

" Ansible syntax highlighting
Plugin 'pearofducks/ansible-vim'

" Elixir syntex highlighting
Plugin 'elixir-editors/vim-elixir'

" Nice colours pls
Plugin 'bluz71/vim-moonfly-colors'

call vundle#end()            " required
filetype plugin indent on    " required

" activate rainbow parens
let g:rainbow_active = 1
let g:haskell_classic_highlighting = 1

syntax on

" tab styling
set smarttab
set tabstop=4
set shiftwidth=4

" backspace over things more reasonably
set backspace=indent,eol,start
" show cursor at all times
set ruler
" search as we type
set incsearch
" show incomplete commands as they're entered
set showcmd

" line numbers are nice
set relativenumber
" and let's have the actual number on the current line
set number

" make it pretty
colorscheme moonfly

" Prevent indenting case labels in switches
autocmd BufRead,BufNewFile *.c set cinoptions=:0

" Spaces instead of tabs in haskell things
autocmd BufRead,BufNewFile *.hs set expandtab
autocmd BufRead,BufNewFile *.lhs set expandtab linebreak filetype=haskell
autocmd BufRead,BufNewFile *.cabal set expandtab

" wrap on words
autocmd BufRead,BufNewFile *.md set linebreak

" generate PDFs from markdown
autocmd BufWritePost *.md execute '!FILE=$(echo % | sed "s/.md//") && pandoc -o ${FILE}.pdf ${FILE}.md'

" skip syntastic checking for Java because it's slow as balls
let g:loaded_systastic_java_javac_checker = 1

" package config here
let g:rainbow_conf = {
    \   'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
    \   'ctermfgs': ['blue', 'yellow', 'cyan', 'magenta', 'green'],
    \   'operators': '_,_',
    \   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
    \   'separately': {
    \       '*': {},
    \       'tex': {
    \           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
    \       },
    \       'lisp': {
    \           'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
    \       },
    \       'vim': {
    \           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
    \       },
    \       'html': {
    \           'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
    \       },
    \       'css': 0,
    \   }
    \}
