set nocompatible              " be iMproved, required
filetype off                  " required
" set the uuntime path to include Vundle and initialize
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
"Plugin 'file:///home/gmarik/path/to/plugin'
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
" vim-code-dark
Plugin 'tomasiser/vim-code-dark'
"NERD Tree
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'

"Align Plugin
Plugin 'Align'

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

"Tagbar
Plugin 'majutsushi/tagbar'
nmap <F8> :TagbarToggle<CR>

""fzf
"Plug '/usr/local/opt/fzf'
"Plug 'junegunn/fzf.vim'
"" fzf using homebrew
" If installed using Homebrew
set rtp+=/usr/local/opt/fzf

" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" An action can be a reference to a function that processes selected lines
function! s:build_quickfix_list(lines)
  call setqflist(map(copy(a:lines), '{ "filename": v:val }'))
  copen
  cc
endfunction

let g:fzf_action = {
  \ 'ctrl-q': function('s:build_quickfix_list'),
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" Default fzf layout
" - down / up / left / right
let g:fzf_layout = { 'down': '~40%' }

" You can set up fzf window using a Vim command (Neovim or latest Vim 8 required)
let g:fzf_layout = { 'window': 'enew' }
let g:fzf_layout = { 'window': '-tabnew' }
let g:fzf_layout = { 'window': '10new' }

" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" Enable per-command history.
" CTRL-N and CTRL-P will be automatically bound to next-history and
" previous-history instead of down and up. If you don't like the change,
" explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
let g:fzf_history_dir = '~/.local/share/fzf-history'

"vimux
"Plugin benmills/vimux
"
""Goyo
"Plug 'junegunn/goyo.vim'
Plugin 'junegunn/goyo.vim'
" CtrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim

"""vimrc
set t_Co=256          " enables 256 colors
syntax enable
set encoding=utf-8
set fencs=utf-8,euckr
set linespace=3
set fileencoding=utf-8
set guifont=Menlo:h14
set guifontwide=NanumGothicCoding:h16

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
set cursorline        " highlight current line
set number
set relativenumber
set numberwidth=5     " We are good up to 99999 lines
set backspace=2 " make backspace work like most other apps

set ignorecase
set smartcase
set incsearch
set hlsearch

"""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""For python""""""""""""""""""""""
"filetype plugin indent on
"" show existing tab with 4 spaces width
"set tabstop=4
"set softtabstop=4
"" when indenting with '>', use 4 spaces width
"set shiftwidth=4
"" On pressing tab, insert 4 spaces
"set expandtab
"""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""
Plugin 'Vimjas/vim-python-pep8-indent'

" For Python
au BufNewFile,BufRead *.py
\ set tabstop=4 |
\ set softtabstop=4 |
\ set shiftwidth=4 |
\ set expandtab |
\ set autoindent |
\ set fileformat=unix |
\ set colorcolumn=80   " highlight maximum line length
""""""""""""""""""""""""""""""""""
" Folding Option
""""""""""""""""""""""""""""""""""
set foldmethod=indent
set foldlevel=99

map \ :NERDTreeToggle<CR>
map \| :NERDTreeFind<CR>

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

""""LEADER""""
let mapleader=","

nnoremap <Leader>rc :rightbelow vnew $MYVIMRC<CR>
" sort
vnoremap <Leader>t :sort<CR>
vnoremap <Leader># :norm i#<CR>
vnoremap <Leader>x :norm 1x<CR>
" vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
" Quick quit command
"noremap <Leader>e :quit<CR>  " Quit current window
"noremap <Leader>E :qa!<CR>   " Quit all windows
noremap <Leader>q :wq<CR>  " Save and Quit current window
noremap <Leader>Q :wqa!<CR>   " Save and Quit all windows
" easier moving between tabs
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

map <Leader>m <esc>:tabnext<CR>

"Use Mark plugin to highlight selected word
map <2-leftmouse> \m

"""""""""""""""""""""""""""""""""""""""
" esc english
"""""""""""""""""""""""""""""""""""""""
set noimd
" Make `jj` and `jk` throw you into normal mode
inoremap jj <esc>
inoremap jk <esc>
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown

"ColorScheme codedar
colorscheme codedark
let g:airline_theme ='codedark'

Plugin 'jiangmiao/auto-pairs'

" BASIC SETUP:

" Enter the current millenium
set nocompatible

" FINDING FILES:

" Search down into subfolders
" Provide tab-completion for all file-related tasks
set path+=**

" Display all matching file when we tab complete
set wildmenu

" NOW WE CAN:
" - Hit tab to :find by partial match
" - Use * to make it fuzzy

" THINGS TO CONSIDER:
" - :b lets you autocomplete any open buffer
"
"
" TAG JUMPING:

" Create the `tags` file (may need to install ctags first)
command! MakeTags !ctags -R .

" NOW WE CAN:
" - Use ^] to jump to tag under cursor
" - Use g^] for ambiguous tags
" - Use ^t to jump back up the tag stack

" THINGS TO CONSIDER:
" - This doesn't help if you want a visual list of tags

" AUTOCOMPLETE:

" The good stuff is documented in |ins-completion|

" HIGHLIGHTS:
" - ^x^n for JUST this file
" - ^x^f for filenames (works with our path trick!)
" - ^x^] for tags only
" - ^n for anything specified by the 'complete' option

" NOW WE CAN:
" - Use ^n and ^p to go back and forth in the suggestion list

" FILE BROWSING:

" Tweaks for browsing
let g:netrw_banner=0        " disable annoying banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

" NOW WE CAN:
" - :edit a folder to open a file browser
" - <CR>/v/t to open in an h-split/v-split/tab
" - check |netrw-browse-maps| for more mappings



" SNIPPETS:

" Read an empty HTML template and move cursor to title
nnoremap ,html :-1read $HOME/.vim/.skeleton.html<CR>3jwf>a

" NOW WE CAN:
" - Take over the world!
"   (with much fewer keystrokes
"


" easier moving of code blocks
vnoremap < <gv " better indention
vnoremap > >gv " better indention



" Quicksave command
"noremap <C-Z> :update<CR>
"vnoremap <C-Z> <C-C>:update<CR>
"inoremap <C-Z> <C-O>:update<CR>


set clipboard=unnamed " use OS clipboard
" This allows buffers to be hidden if you've modified a buffer.
" This is almost a must if you wish to use buffers in this way.
set hidden

" To open a new empty buffer
" This replaces :tabnew which I used to bind to this mapping
nmap <leader>T :enew<cr>

" Move to the next buffer
nmap <leader>l :bnext<CR>

" Move to the previous buffer
nmap <leader>h :bprevious<CR>

" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <leader>bq :bp <BAR> bd #<CR>

" Show all open buffers and their status
nmap <leader>bl :ls<CR>


"" https://agvim.com/2017/09/05/vim-plugins-100/
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'gregsexton/gitv'
Plugin 'tpope/vim-eunuch'
Plugin 'elzr/vim-json'
Plugin 'bad-whitespace'
Plugin 'vim-scripts/DiffGoFile'
Plugin 'schickling/vim-bufonly'
Plugin 'sjl/gundo.vim'
Plugin 'haya14busa/incsearch.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'scrooloose/nerdcommenter'
Plugin 'ctrlpvim/ctrlp.vim'
""""""""
let g:ctrlp_available=1
let g:ctrlp_by_filename=1

"nnoremap g :CtrlPYankRound

let g:ctrlp_custom_ignore = { 'dir':  '\v[\/](\.git|\.hg|\.svn|node_modules|aJs|vendor|gen|bower_components|web.*|dist|.*Zone.Identifier|assets)$', 'file': '\.pyc$\|\.pyo$\|\v\.(exe|so|dll|class|png|jpg|jpeg)$' }
let NERDTreeIgnore=['\.pyc$', 'aJs$', 'vendor$', 'gen$','bower_components$', 'dist$', 'node_modules$', 'Zone.Identifier$', '\.vim$', '\~$'] " Ignores for NERDTree
let g:ctrlp_root_markers = ['.ctrlp']
let g:ctrlp_max_height = 30
func! MyCtrlPTag()
    CtrlPTag
endfunc
com! MyCtrlPTag call MyCtrlPTag()

nnoremap SJ :CtrlPBuffer
nnoremap SD :CtrlPDir
nnoremap SN :CtrlPMRUFiles
nnoremap SM :CtrlPCmdline
nnoremap ST :CtrlPTag
nnoremap SQ :CtrlPQuickfix
nnoremap SY :CtrlPLine

nnoremap SE :CtrlprojEdit
nnoremap SR :Ctrlproj
nnoremap SL :CtrlprojLastDir

nnoremap SC :CtrlPMenu
nnoremap SP :CtrlP

function! CtrlPWithSearchText(search_text, ctrlp_command_end)
    execute ':CtrlP' . a:ctrlp_command_end
    sleep
    call feedkeys(a:search_text)
endfunction
command! -nargs=1 CtrlPWithText call CtrlPWithSearchText(, '')

Plugin 'iwataka/ctrlproj.vim'
""""""""
let g:ctrlproj_open_extensions = ['pdf', 'png']
let g:ctrlproj_configuration_path = '~/.vim/.ctrlproj'

Plugin 'Quich-Filter'
nnoremap ,fi :call FilteringNew().addToParameter('alt', @/).run()
nnoremap ,g :call FilteringGetForSource().return()

Plugin 'mattn/emmet-vim'
Plugin 'honza/vim-snippets'
Plugin 'HTML.zip'

""""""""
let g:html_tag_case = 'lowercase'
let g:no_html_tab_mapping = 'yes'

Plugin 'airblade/vim-rooter'
""""""
let g:rooter_manual_only = 1
let g:rooter_patterns = ['.ctrlp', 'build.gradle', '.git', '.classpath', 'AndroidManifest.xml']


Plugin 'mileszs/ack.vim'
Plugin 'chrisbra/NrrwRgn'
Plugin 'MultipleSearch'

""""""
let g:MultipleSearchMaxColors=11
let g:MultipleSearchColorSequence="darkcyan,gray,LightCyan,LightBlue,LightGreen,blue,green,magenta,cyan,gray,brown"
let g:MultipleSearchTextColorSequence="white,DarkRed,black,black,black,white,black,white,red,black,white"
"nmap ,H 0vv\*,
nnoremap  ,H :SearchReset
nnoremap  ,h :SearchBuffers =expand("")
vnoremap  ,h y:SearchBuffers "

Plugin 'LustyExplorer'

"" LUSTYEXPLORERE"
nmap  ,fD :cd /src/Dropbox/:LustyFilesystemExplorer
nmap  ,fb :cd ~/bin/:LustyFilesystemExplorer
nmap  ,fc :cd ~/code/:LustyFilesystemExplorer
nmap  ,fd :cd ~/download/:LustyFilesystemExplorer
nmap  ,fh :cd ~/:LustyFilesystemExplorer
nmap  ,fj :LustyBufferExplorer
nmap  ,fk :LustyFilesystemExplorer
nmap  ,fl :cd ~/logs/:LustyFilesystemExplorer
nmap  ,fr :cd ~/rc/:LustyFilesystemExplorer
nmap  ,fs :cd ~/src/:LustyFilesystemExplorer
nmap  ,fu :cd ~/.vim/UltiSnips:LustyFilesystemExplorer
nmap  ,fv :cd ~/.vim/bundle/:LustyFilesystemExplorer
nmap  ,fr :Rooter:LustyFilesystemExplorer

Plugin 'LustyJuggler'
Plugin 'tpope/vim-commentary'

"""LUSTYJUGGLER"""
nmap  ,d :LustyJuggler

""MARKED"
"let g:marked_app = "Marked"
"let g:marked_filetypes = ["markdown", "mkd", "ghmarkdown", "vimwiki"]
"
" Automatically closing braces
inoremap {<CR> {<CR>}<Esc>ko<tab>
inoremap [<CR> [<CR>]<Esc>ko<tab>
inoremap (<CR> (<CR>)<Esc>ko<tab>

Plugin 'ekalinin/dockerfile.vim'
Plugin 'avakhov/vim-yaml'

noremap <Leader>s :update<CR>

"Ag mode"
Plugin 'rking/ag.vim'

"Nerdtree open"
function! StartUp()
    if 0 == argc()
        NERDTree
    end
endfunction

autocmd VimEnter * call StartUp()

autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType html setlocal shiftwidth=2 tabstop=2

"""Vim Instant Markdown"""
Plugin 'suan/vim-instant-markdown', {'rtp': 'after'}

Plugin 'dense-analysis/ale'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'

let g:ale_linters = {
\   'python': ['flake8', 'pylint'],
\   'javascript': ['eslint'],
\   'vue': ['eslint']
\}

let g:ale_fixers = {
\    'javascript': ['eslint'],
\    'vue': ['eslint'],
\    'scss': ['prettier']
\}
let g:ale_fix_on_save = 1
Plugin 'alvan/vim-closetag'

let g:closetag_filenames = '*.html,*.xhtml,*.phtml, *.js'


let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'
