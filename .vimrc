set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
" for Windows
" set rtp+=$HOME/vimfiles/bundle/Vundle.vim
call vundle#begin()
" for windows
" call vundle#begin('~/vimfiles/bundle'r)'

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

"git interface
Plugin 'tpope/vim-fugitive'
"filesystem
Plugin 'scrooloose/nerdtree'

"auto-completion stuff
Plugin 'Valloric/YouCompleteMe'
""code folding
Plugin 'tmhedberg/SimpylFold'

" tags
Plugin 'gtags.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on    " enables filetype detection
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append '!' to update
" :PluginSearch foo - searches for foo; append '!' to refresh
" :PluginClean      - confirms removal of unused plugins; 
"
" see :h vundle for more details or wiki for FAQ
" put your non-Plugin stuff after this line
"
"
" map NERDTree toggle to F2 key
map <F2> :NERDTreeToggle<CR>
map <M-.> :GtagsCursor<CR>

let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree


"------------Start Python PEP 8 stuff----------------
" Number of spaces that a pre-existing tab is equal to.
au BufRead,BufNewFile *py,*pyw,*.c,*.h set tabstop=4

"spaces for indents
au BufRead,BufNewFile *.py,*pyw set shiftwidth=4
au BufRead,BufNewFile *.py,*.pyw set expandtab
au BufRead,BufNewFile *.py set softtabstop=4

" Use the below highlight group when displaying bad whitespace is desired.
highlight BadWhitespace ctermbg=red guibg=red

" Display tabs at the beginning of a line in Python mode as bad.
au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/
" Make trailing whitespace be flagged as bad.
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Wrap text after a certain number of characters
au BufRead,BufNewFile *.py,*.pyw, set textwidth=100

" Use UNIX (\n) line endings.
au BufNewFile *.py,*.pyw,*.c,*.h set fileformat=unix

" Set the default file encoding to UTF-8:
set encoding=utf-8

"----------Stop python PEP 8 stuff--------------

"I don't like swap files
set noswapfile

"turn on numbering
set nu

" For full syntax highlighting:
syntax on

" code folding
" Keep indentation level from previous line:
autocmd FileType python set autoindent

"Folding based on indentation:
autocmd FileType python set foldmethod=indent
autocmd FileType c set foldmethod=indent

" make backspaces more powerfull
set backspace=indent,eol,start

"use space to open folds
nnoremap <space> za 

" Map buffer list to shortcut key
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

" Map quick fix list to a shortcut key
nnoremap <silent> [q :cprev<CR>
nnoremap <silent> ]q :cnext<CR>
nnoremap <silent> [Q :cfirst<CR>
nnoremap <silent> ]Q :clast<CR>

set incsearch
