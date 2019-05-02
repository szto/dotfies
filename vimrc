set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line~~

"NERD Tree
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'

"Align Plugin
Plugin 'vim-script/Align'

"Scroll Colors Plugin
Plugin 'vim-scripts/ScrollColors'

"Surround
Plugin 'tpope/vim-surround'

"Hard Mode 
Plugin 'takac/vim-hardtime'

"Jedi
Plugin 'davidhalter/jedi-vim'

"Neosnippet
Plugin 'Shougo/neocomplete'
Plugin 'Shougo/neosnippet'
Plugin 'Shougo/neosnippet-snippets'

"vim-airline
Plugin 'vim-airline/vim-airline'

"""vimrc
set t_Co=256          " enables 256 colors
syntax enable
set encoding=utf-8

set noundofile
set mouse=a
set switchbuf=useopen " reveal already opened files from the
" quickfix window instead of opening new
" buffers
set history=1000      " remember more commands and search history
set undolevels=1000   " use many muchos levels of undo
set hidden            " hide buffers instead of closing them this
" means that the current buffer can be put
" to background without being written; and
" that marks and undo history are preserved
set nobackup          " do not keep backup files, it's 70's style cluttering
set noswapfile        " do not write annoying intermediate swap files,
set showcmd           " show the command being typed
set ruler             " Always show current positions along the bottom
set nostartofline     " leave my cursor where it was
set colorcolumn=120   " highlight maximum line length
set cursorline        " highlight current line
set number
set numberwidth=5     " We are good up to 99999 lines
set backspace=2       " make backspace work like most other apps

""""""""""""""""""""""""""""""""""""""""""""
""""""""""""For python""""""""""""""""""""""
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
set softtabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""

" For Python
au BufNewFile,BufRead *.py
\ set tabstop=4 |
\ set softtabstop=4 |
\ set shiftwidth=4 |
\ set expandtab |
"\ set autoindent |
\ set fileformat=unix
""""""""""""""""""""""""""""""""""
" Folding Option
""""""""""""""""""""""""""""""""""
set foldmethod=indent
set foldlevel=99

map <F3> :NERDTreeToggle<CR>

""""""""""""""""""""""""""""""""""
" Disable arrow keys
""""""""""""""""""""""""""""""""""
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

"""""""""""""""""""""""""""""""""""""""""
" copy to OS clipboard
"""""""""""""""""""""""""""""""""""""""""
" Set clipboard t0 unnamedplus only if it's not Mac OS X
set clipboard=unnamed
if has("unix")
  let s:uname = system("uname")
  if s:uname == "Linux\n"
    set clipboard=unnamedplus
  endif
else
    set clipboard=unnamed
endif

vnoremap <C-c> "*y
vnoremap <C-p> "*p
vmap ,c "+y
vmap ,p "*p

