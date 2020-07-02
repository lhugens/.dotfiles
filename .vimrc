" Install everything " First install vundle: " git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim " Then type :PluginInstall and run
set background=dark
" Vundle
filetype off

let g:vundle_default_git_proto = 'git'
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Bundles
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'godlygeek/tabular'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'altercation/vim-colors-solarized'
Plugin 'ap/vim-css-color'
Plugin 'scrooloose/nerdtree'
Plugin 'bfrg/vim-cpp-modern'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'Yggdroot/indentLine'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'qxxxb/vim-searchhi' 
Plugin 'jiangmiao/auto-pairs' 
"Plugin 'terryma/vim-multiple-cursors'
"Plugin 'ryanoasis/vim-devicons'
"Plugin 'dusans/vim-hardmode'
"Plugin 'jceb/vim-orgmode'
"Plugin 'xolox/vim-notes'
"Plugin 'sjl/gundo.vim'
"Plugin 'junegunn/fzf'
"Plugin 'itchyny/lightline.vim'
"Plugin 'hardcoreplayers/spaceline.vim'

call vundle#end()

" Autocommands
" autocmd VhmEnter,BufNewFile,BufReadPost * silent! call HardMode()
" autocmd BufWritePost ~/.zshrc !source ~/.zshrc


" Required for vundle
"filetype plugin indent on 
filetype plugin on 

" Highlighting
syntax on

" Line number display
set number relativenumber

set encoding=utf-8

" Indentation 
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1
filetype plugin indent on
:set cindent

" Airline config
"set t_Co=256
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='powerlineish'

" History
set history=50

" Display
set ls=2
set showmode
set showcmd
set modeline
set ruler
set title
set nu

" Line wrapping
set nowrap
set linebreak
set showbreak=▹

" Auto indent what you can
set autoindent

" Searching
set ignorecase
set smartcase
"set gdefault
set hlsearch
set showmatch

" Enable jumping into files in a search buffer
set hidden 

" Make backspace a bit nicer
set backspace=eol,start,indent

" Indentation
set shiftwidth=4
set tabstop=4
set softtabstop=4
set shiftround
set expandtab

" Others
set mouse=
set noesckeys
set nocompatible
set wildmenu
set nofoldenable

" set default vim clipboard to system clipboard
set clipboard=unnamedplus

" KEYBINDINGS

" Toggle line-wrap
map <F6> <Esc>:set wrap!<CR>

" Open file under cursor in new tab
map <F9> <Esc><C-W>gF<CR>:tabm<CR>

" Direction keys for wrapped lines
nnoremap <silent> k gk
nnoremap <silent> j gj
nnoremap <silent> <Up> gk
nnoremap <silent> <Down> gj
inoremap <silent> <Up> <Esc>gka
inoremap <silent> <Down> <Esc>gja

" Bash / emacs keys for command line
cnoremap <C-a> <Home>
cnoremap <C-e> <End>

" Write current file with sudo perms
"command! W w !sudo tee % > /dev/null
command! W w

" clean highlighted words from search
noremap  <silent> ,c <ESC>:nohl<CR>

" NERDtree
let NERDTreeShowHidden=1
map <C-n> :NERDTreeToggle<CR>

" fzf 
" nnoremap <silent> ,f :FZF<CR>

" Cycle through open buffers
nnoremap <Tab>   :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>

" Better window navigation
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-h> <C-w>h
noremap <C-l> <C-w>l
noremap ,l <C-w>h
noremap ,ç <C-w>l

" Yanking and pasting to system clipoard
" note: install gVim alongside to work out of the box
noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "+y
noremap <Leader>P "+p

" Tabularize equations
map <C-t> :'<,'>Tabularize /

" Use "-" to go into search mode
noremap  - <ESC>/

" type S to enter search and replace	
nnoremap S :%s//gc<Left><Left><Left>

" load directory-specific configs from a .vim fil
let b:thisdir=expand("%:p:h")
let b:vim=b:thisdir."/.vim"
if (filereadable(b:vim))
    execute "source ".b:vim
endif
