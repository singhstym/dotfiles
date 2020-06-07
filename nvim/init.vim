" Plugins
call plug#begin('~/.config/nvim/plugged')
	" Functionality
	Plug 'tpope/vim-sensible'
	Plug 'tpope/vim-commentary'
	" Customization
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'morhetz/gruvbox'
call plug#end()

" Settings
set tabstop=2
set shiftwidth=2
set showtabline=2
set relativenumber
set cursorline
set noshowmode
colorscheme gruvbox

" Vim Airline

" enable tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''

" enable powerline fonts
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_right_sep = ''

" Switch to your current theme
let g:airline_theme = 'base16_gruvbox_dark_hard' 
