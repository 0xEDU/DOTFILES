  " Plugins
call plug#begin()
Plug 'tmsvg/pear-tree' " Complete parentheses, brackets, quotes in pair.
Plug 'ryanoasis/vim-devicons' " Pretty icons
Plug 'kyazdani42/nvim-web-devicons' " Pretty icons
Plug 'romgrk/barbar.nvim' " Tabs plugin
Plug 'nvim-tree/nvim-tree.lua' " File explorer
Plug 'folke/tokyonight.nvim', { 'branch': 'main' } " Theme
Plug 'nvim-lualine/lualine.nvim' " Status line
Plug 'pbondoer/vim-42header' " 42 Header
Plug 'vim-syntastic/syntastic' " Dependency for norminette
Plug 'alexandregv/norminette-vim' " Norminette checker
Plug 'petertriho/nvim-scrollbar' " Scrollbar
"Plug 'github/copilot.vim' " Copilot
call plug#end()

" Theme
colorscheme tokyonight-night

" Format
set tabstop=4
set autoindent
set shiftwidth=4
set cindent
set number relativenumber
set nu rnu
set smartindent

" Binds
let mapleader = " "
nmap <leader><Tab> :BufferNext<CR>
nmap <leader><S-Tab> :BufferPrevious<CR>
nmap <leader>t :NvimTreeToggle<CR>
nmap <F2> :wq<CR>
nmap <F3> :w<CR>
nmap <F4> :q<CR>
nmap <C-Up> :m .-2<CR>
nmap <C-Down> :m +1<CR>

"" Norminette
" Enable norminette-vim (and gcc)
let g:syntastic_c_checkers = ['norminette', 'gcc']
let g:syntastic_aggregate_errors = 1

" Set the path to norminette (do no set if using norminette of 42 mac)
let g:syntastic_c_norminette_exec = 'norminette'

" Support headers (.h)
let g:c_syntax_for_h = 1
let g:syntastic_c_include_dirs = ['include', '../include', '../../include', 'libft', '../libft/include', '../../libft/include']

" Pass custom arguments to norminette (this one ignores 42header)
let g:syntastic_c_norminette_args = '-R CheckTopCommentHeader'

" Check errors when opening a file (disable to speed up startup time)
let g:syntastic_check_on_open = 1

" Enable error list
let g:syntastic_always_populate_loc_list = 1

" Automatically open error list
let g:syntastic_auto_loc_list = 1

" Skip check when closing
let g:syntastic_check_on_wq = 0

" Lua
lua << END
require('lualine').setup {
  options = {
	theme = 'tokyonight'
  }
}
require('nvim-web-devicons').setup()
require('nvim-tree').setup()
require('scrollbar').setup()
END
