set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
"
" " The following are examples of different formats supported.
" " Keep Plugin commands between vundle#begin/end.
" " plugin on GitHub repo

" a Git wrapper so awesome, it should be illegal
Plugin 'tpope/vim-fugitive'

" A tree explorer plugin for vim.
Plugin 'scrooloose/nerdtree'

" Vim plugin that displays tags in a window, ordered by scope
Plugin 'majutsushi/tagbar'

Plugin 'othree/html5.vim'
Plugin 'gregsexton/MatchTag'
Plugin 'tpope/vim-pathogen'
Plugin 'groenewege/vim-less'

" Syntax checking hacks for vim
Plugin 'scrooloose/syntastic'

" Fuzzy file, buffer, mru, tag, etc finder.
Plugin 'kien/ctrlp.vim'

"  Plugin 'vim-scripts/php.vim-html-enhanced'
" Plugin '2072/PHP-Indenting-for-VIm'
Plugin 'StanAngeloff/php.vim'


Plugin 'tmhedberg/matchit'
Plugin 'Lokaltog/vim-powerline'

" Vim motions on speed!
Plugin 'Lokaltog/vim-easymotion'

Plugin 'tomtom/tcomment_vim'
Plugin 'tpope/vim-surround'
"  Vim snip mate
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'jlanzarotta/bufexplorer'
"  Current Theme
Plugin 'altercation/vim-colors-solarized'
"  Bind Tmux Keys with VIM
Plugin 'christoomey/vim-tmux-navigator'
"  Session Management for VIM
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-session'


"  .scss syntax highlighting
Plugin 'JulesWang/css.vim' " only necessary if your Vim version < 7.4
Plugin 'cakebaker/scss-syntax.vim'


"  Database Editor
Plugin 'vim-scripts/dbext.vim'

"  Plugin 'bling/vim-airline'
"  PHP Documentor
"  Plugin 'tobyS/vmustache' "  PHP documentor dependancy
"  Plugin 'tobyS/pdv' "  PHP documentor

" Archived
" ========
" Plugin 'morhetz/gruvbox'

se t_Co=256
"  Plugin 'sukima/xmledit'
" " plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
Plugin 'ZoomWin'
" " Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" " git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" " The sparkup vim script is in a subdirectory of this repo called vim.
" " Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" " Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}
"
" " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
" "filetype plugin on
" "
" " Brief help
" " :PluginList          - list configured plugins
" " :PluginInstall(!)    - install (update) plugins
" " :PluginSearch(!) foo - search (or refresh cache first) for foo
" " :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line


" GENERAL SETTINGS
" ================
let mapleader = ","
set guifont=MyFont\ for\ Powerline
" let g:Powerline_symbols = 'fancy'
" let g:airline#extensions#tabline#enabled = 1


" Theme Settings
" ==============
syntax enable
set background=dark
colorscheme solarized
" let g:airline_theme=solarized


" Flags
" =====
set spelllang=en_gb " spelling GB
set gdefault " sets global flag by default
set noswapfile " doesn't create a swap file
set cursorline "adds a line for the cursor
set winheight=5
set winminheight=5
set winheight=999
set number
set ignorecase
set incsearch
set smartcase
" set foldmethod=syntax
set foldmethod=manual
set foldlevelstart=1
set wildmenu " shows suggestions when tabing in normal mode
set scrolloff=5 " adds 5 lines to the top and bottom of the window
set laststatus=2 "adding the status line to the editor
" set clipboard=unnamedplus " sets the system clipboard as default


" Formatting {{{
set noexpandtab   " Make sure that every file uses real tabs, not spaces
set shiftround    " Round indent to pultiple of 'shiftwidth'
set backspace=indent,eol,start " Backspace over everything in insert mode
set smartindent   " Do smart indenting when starting a new line
set autoindent    " Copy indent from current line, over to the new line
set fo=vt         " Set the format options ('formatoptions')
set nojoinspaces  " :h joinspaces

" Set the tab width
let s:tabwidth=4
exec 'set tabstop='    .s:tabwidth
exec 'set shiftwidth=' .s:tabwidth
exec 'set softtabstop='.s:tabwidth
" }}}

" KEY BINDINGS
" ===================

"This is a bind to navigate windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-o> <C-w>o
nnoremap th  :tabfirst<CR>
nnoremap tk  :tabnext<CR>
nnoremap tj  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tn  :tabedit<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>

" This is to sudo write a file if opened with read only permissions
cnoremap sudow w !sudo tee % >/dev/null

"Toggle spell checker
nmap <silent> <leader>s :set spell!<CR>

" Toggle commenting Requires T-comment plugin
map <leader>c <c-_><c-_>

" Toggle Nerd Tree
map <silent> <leader>t :NERDTreeToggle<CR> :NERDTreeMirror<CR>

" Toggle easymotion
map <leader>w <leader><leader>w
map <leader>b <leader><leader>b

" Toggle Tagbar
map <leader>g :Tagbar<CR>

" Session Management
let	g:session_directory = "~/.vim/session"
let g:session_autoload = "no"
let g:session_autosave = "no"
let g:session_command_aliases = 1
nnoremap <leader>so :OpenSession 
nnoremap <leader>ss :SaveSession 
nnoremap <leader>sd :DeleteSession<CR>
nnoremap <leader>sc :CloseSession<CR>

" Manual Fold shotcuts, Press Space to toggle a fold in Normal mode and Create
" in Visual Mode
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf


" AUTOMATICALLY RUN THESE
" =======================
"Automatically Open Nerd Tree
" autocmd VimEnter * NERDTree
"Automatically Open Tagbar
" autocmd VimEnter * Tagbar


" ABBREVIATIONS
" =============
" auto complete tags
iabbrev </ </<C-X><C-O>

" Warn if the file has been changed
au FileChangedShell * echo "Warning: File changed on disk"

" if the file type is .ctp change the file type to HTML and then indent the
" lines
" au BufEnter,BufNew *.ctp map gg=G :se ft=html<CR> gg=G 
" au BufNewFile,BufRead *.ctp map gg=G :se ft=html<CR>:1<CR>=G:se ft=php<CR>


