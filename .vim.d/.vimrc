" John Ling's customizations to VIM
"
" Maintainer:	John Ling
" Last change:	2013 May 22

" Set colorscheme
syntax enable
set background=dark
colorscheme solarized

" Automatic reloading of john.vim
"autocmd! bufwritepost _vimrc source %

" Rebind leader key from backslash to comma
let mapleader=","

" Define useful macros
"
" Split XML into newlines.  Note artifact adds extra newline so remove with
" another macro @l
let @x=':%s/\(<[^>]*>\)/\r\1\r/g'
"
" Remove blank lines
let @l=':%g/^$/d'

" Quick quit command
noremap <Leader>e :quit<CR>  " Quit current window
noremap <Leader>E :qa!<CR>   " Quit all windows

" easier moving of code blocks (maintain highlight while shifting)
vnoremap < <gv0w  " better indentation
vnoremap > >gv0w  " better indentation

" Shortcut map to searching recursively through a folder
map <leader>g :vimgrep // **/*.txt **/*.sh **/*.sql **/*.c **/*.cpp **/*.java **/*.py **/*.in<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>

" Reformat a single line xml into multiline
map <leader>x :set filetype=xml syntax=xml \| @x \| @l \| gg=G

" Show trailing whitespace
" MUST be inserted BEFORE the colorscheme command
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhitespace /\s\+$/

" Showing line numbers and length
set number " show line numbers

" Set document length
set tw=80  " width of document
set nowrap " don't automatically wrap on load
set fo-=t  " don't automatically wrap text when typing

" Show document margin at the 81st position
if version >= 702 " i.e. greater than 7.2
  set cc=81
endif

" Real programmers don't use TABs but spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

" Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase

" To stop indenting when pasting with the mouse
set pastetoggle=<F2> " then try hitting F2 while in insert mode
set clipboard=unnamed

" Set directories available for tmp and swap files
set directory=. ",/var/tmp,/tmp

" No backup files
" set nobackup
" set nowritebackup
" set noswapfile

" cursors
" set cursorline
" set cursorcolumn

" Maximize Window on startup
au GUIEnter * simalt ~x "x on an English Windows version. n on a French one

" Additional customizations can be found in either .vimrc_custom
" source ~/.vimrc_custom
