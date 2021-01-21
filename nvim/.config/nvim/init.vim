" Global Settings
set number rnu
set list
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣
let mapleader=" "
let leader=" "

" Install plugins with vim-plug
call plug#begin(stdpath('data') . '/plugged')

" Eye-candy
Plug 'itchyny/lightline.vim'
Plug 'mgee/lightline-bufferline'
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

" Moving lines up and down
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

" Theme
set termguicolors
let g:nord_italic = 1
let g:nord_underline = 1
colorscheme nord

" Lightline
set noshowmode
let g:lightline = {
    \ 'colorscheme': 'nord',
    \ 'active': {
    \   'left': [ [ 'mode', 'paste'  ],
    \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ],
    \   'right': [ [ 'lineinfo'  ],
    \              [ 'percent'  ],
    \              [ 'filetype'  ] ]
    \ },
    \ 'component_function': {
    \   'gitbranch': 'fugitive#head'
    \ }
    \ }

" Integrate lightline-bufferline with lightline
let g:lightline.tabline          = {'left': [['buffers']], 'right': [['close']]}
let g:lightline.component_expand = {'buffers': 'lightline#bufferline#buffers'}
let g:lightline.component_type   = {'buffers': 'tabsel'}

" CtrlP
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<2-LeftMouse>'],
    \ 'AcceptSelection("t")': ['<cr>'],
    \ }

" QuickScope
highlight QuickScopePrimary guifg='#afff5f' gui=underline ctermfg=155 cterm=underline
highlight QuickScopeSecondary guifg='#5fffff' gui=underline ctermfg=81 cterm=underline

