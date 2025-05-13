" General settings
set number
set relativenumber
set tabstop=4
set shiftwidth=4
set expandtab
set list
set listchars=trail:x
set cursorcolumn
set cursorline
set colorcolumn=80
set title
set termguicolors
syntax on
"colorscheme desert

call plug#begin('~/.local/share/nvim/plugged')
Plug 'preservim/nerdtree'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.8' }
call plug#end()

let mapleader = ","
nnoremap <leader>ff <cmd>Telescope find_files<cr>
