"Giora init.vim config

set mouse=a
set mousehide
set encoding=utf-8
set noswapfile
set nowb
set nobackup
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set smartindent
set expandtab
set smarttab
set number
set nowrap
set noerrorbells visualbell t_vb=
syntax on
filetype on
filetype plugin on
set fileformat=unix
set showcmd
set noshowmode
set scrolloff=5
set splitbelow
set splitright


call plug#begin()
Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}
Plug 'EdenEast/nightfox.nvim'
Plug 'lewis6991/gitsigns.nvim'
Plug 'kdheepak/tabline.nvim'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'preservim/nerdtree'
Plug 'windwp/nvim-autopairs'
Plug 'ryanoasis/vim-devicons'
Plug 'mhinz/vim-startify'

call plug#end()

"Theme
colorscheme terafox

"For Tree
let g:netrw_banner = 0
let g:netrw_browse_split = 3
let g:netrw_liststyle = 3
nmap <C-n> :NERDTreeToggle<CR>

"For Terminal
autocmd TermEnter term://*toggleterm#*
      \ tnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>
nnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>
inoremap <silent><c-t> <Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>

"For Tabulation by < and >
vnoremap <silent> > >gv
vnoremap <silent> < <gv

"lua

lua << EOF
require('lualine').setup()
require("toggleterm").setup()
require('gitsigns').setup()
require('tabline').setup()
require("nvim-autopairs").setup()
EOF
