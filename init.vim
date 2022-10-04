" Plugins
call plug#begin()
Plug 'tmsvg/pear-tree'
Plug 'preservim/nerdtree'
Plug 'pbondoer/vim-42header'
Plug 'github/copilot.vim'
Plug 'shaunsingh/moonlight.nvim'
call plug#end()


" Theme
colorscheme moonlight

" Format
set tabstop=4
set autoindent
set shiftwidth=4
set cindent
set number
set smartindent

" Binds
nmap <F2> :wq<CR>
nmap <F3> :w<CR>
nmap <F4> :q<CR>
nmap t :NERDTree<CR>
