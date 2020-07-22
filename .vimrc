        "/\         
       "/  \        
      "/\   \       
     "/  __  \      
    "/  (  )  \     
   "/ __|  |__\\    
  "/.`        `.\   
"github.com/lhugens

" VUNDLE
filetype plugin off
let g:vundle_default_git_proto = 'git'
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'godlygeek/tabular'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Yggdroot/indentLine'
Plugin 'qxxxb/vim-searchhi' 
Plugin 'liuchengxu/vim-which-key'
Plugin 'francoiscabrol/ranger.vim'
Plugin 'preservim/nerdcommenter'
Plugin 'tpope/vim-fugitive'
Plugin 'ap/vim-css-color'
call vundle#end()
filetype plugin on 

" VIM INTERNAL
syntax on 
set t_Co=256

set number relativenumber
set encoding=utf-8 
set clipboard=unnamedplus
set cursorline
set autoindent

nnoremap <Tab>    :bnext!     <CR>
nnoremap <S-Tab>  :bprevious! <CR>
noremap  <Leader> y "*y
noremap  <Leader> p "*p
noremap  <Leader> Y "+y
noremap  <Leader> P "+p
nnoremap j gj
vnoremap j gj
nnoremap k gk
vnoremap k gk

let g:sierra_Twilight = 1
colorscheme sierra 

" load directory-specific configs from a .vim fil
let b:thisdir=expand("%:p:h")
let b:vim=b:thisdir."/.vim"
if (filereadable(b:vim))
    execute "source ".b:vim
endif

" indentLine
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1

" vim-airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'zenburn'


" mappings with arguments
noremap ,t :'<,'>Tabularize /
noremap ,r :%s//gc<Left><Left><Left>
noremap ,s <ESC>/
noremap ,l <C-w>l
noremap ,h <C-w>h
noremap ,k <C-w>k
noremap ,j <C-w>j
noremap ,x <ESC>:wq<CR>
noremap ,w <ESC>:w<CR>
noremap ,q <ESC>:q<CR>
noremap ,X <ESC>:wq!<CR>
noremap ,W <ESC>:w!<CR>
noremap ,Q <ESC>:q!<CR>

" ranger.vim
let g:ranger_map_keys = 0

" vim-which-key
set timeoutlen=1000
let g:mapleader = "\<Space>"
let g:maplocalleader = ','
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>
call which_key#register('<Space>', "g:which_key_map")

let g:which_key_map =  {}
let g:which_key_sep = '→'
let g:which_key_map['l'] = [ '<C-w>l',  'go rwindow']
let g:which_key_map['h'] = [ '<C-w>h',  'go lwindow']
let g:which_key_map['t'] = [ '<C-T>',   'tabularize']
let g:which_key_map['R'] = [ ':Ranger', 'ranger']
let g:which_key_map['q'] = [ ':qa!', 'quit']
"let g:which_key_map['w'] = [ ':wqa', 'write']
"let g:which_key_map['s'] = [ '-', 'search']
"let g:which_key_map['S'] = [ '<C-S>', 'search & replace']

set viewoptions=cursor,folds,slash,unix
autocmd BufWinLeave *.* mkview!
autocmd BufWinEnter *.* silent loadview
