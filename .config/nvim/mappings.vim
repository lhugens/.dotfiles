let mapleader = ','

nnoremap j gj
vnoremap j gj
nnoremap k gk
vnoremap k gk

nnoremap <Tab>    :bnext!     <CR>
nnoremap <S-Tab>  :bprevious! <CR>
noremap  <leader> y "*y
noremap  <leader> p "*p
noremap  <leader> Y "+y
noremap  <leader> P "+p

noremap <leader>t :'<,'>Tabularize /
noremap <leader>r :%s//gc<Left><Left><Left>
noremap <leader>R :RnvimrToggle<CR>
noremap <leader>s <ESC>/
noremap <leader>l <C-w>l
noremap <leader>h <C-w>h
noremap <leader>k <C-w>k
noremap <leader>j <C-w>j
noremap <leader>x <ESC>:wq<CR>
noremap <leader>w <ESC>:w<CR>
noremap <leader>q <ESC>:q<CR>
noremap <leader>X <ESC>:wq!<CR>
noremap <leader>W <ESC>:w!<CR>

let mapleader = '\'
