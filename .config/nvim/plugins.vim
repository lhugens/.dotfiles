call plug#begin('~/.config/nvim/autoload/plugged')

Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'godlygeek/tabular'
Plug 'qxxxb/vim-searchhi' 
Plug 'tpope/vim-fugitive'
"Plug 'chriskempson/base16-vim'
Plug 'sheerun/vim-polyglot'
Plug 'preservim/nerdcommenter'
Plug 'kevinhwang91/rnvimr'
Plug 'vimwiki/vimwiki'
Plug 'Yggdroot/indentLine'

call plug#end()

let g:indentLine_char_list = ['|', '¦', '┆', '┊']
