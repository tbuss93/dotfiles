" Global Settings
set number rnu
set list
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣
let mapleader=" "
let leader=" "

" Moving lines up and down
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" Install plugins with vim-plug
call plug#begin(stdpath('data') . '/plugged')

" Eye-candy
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'arcticicestudio/nord-vim'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Completions
Plug 'jiangmiao/auto-pairs'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-surround'

" Usablility
Plug 'kien/ctrlp.vim'
Plug 'bronson/vim-trailing-whitespace'
Plug 'tpope/vim-repeat'
Plug 'unblevable/quick-scope'

call plug#end()

" Theme
colorscheme nord
let g:airline_theme='nord'
let g:airline_powerline_fonts=1

" CtrlP
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<2-LeftMouse>'],
    \ 'AcceptSelection("t")': ['<cr>'],
    \ }

" QuickScope
highlight QuickScopePrimary guifg='#afff5f' gui=underline ctermfg=155 cterm=underline
highlight QuickScopeSecondary guifg='#5fffff' gui=underline ctermfg=81 cterm=underline

