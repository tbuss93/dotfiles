" Global Settings
set number rnu

" Install plugins with vim-plug
call plug#begin(stdpath('data') . '/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'arcticicestudio/nord-vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins'}
Plug 'wokalski/autocomplete-flow'
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'kien/ctrlp.vim'
call plug#end()

" Theme
colorscheme nord
let g:airline_theme='nord'
let g:airline_powerline_fonts=1

" deoplete
let g:deoplete#enable_at_start = 1
let g:neosnipplet#enable_completed_snipplet = 1


" NERDTree
nmap <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden = 1
