set relativenumber
set number
set nohlsearch
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nowrap
set termguicolors
set scrolloff=8
set colorcolumn=80
set signcolumn=yes

call plug#begin('$HOME/.config/nvim/plugged')
Plug 'tpope/vim-sensible'
Plug 'preservim/nerdtree'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
call plug#end()

colorscheme onehalfdark

let mapleader=" "
nnoremap <leader>q :NERDTreeToggle<CR>
