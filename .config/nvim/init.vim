" Thanks to https://youtu.be/XA2WjJbmmoM 🥰

" disable backwards compatibility
set nocompatible

" enable syntax highlighting
syntax enable

" mouse selection
set mouse=a

" search through subfolders
set path+=**
set wildmenu

" open file tree with 't' in normal mode
:nmap t :Vexplore<CR>

" netrw config
let g:netrw_banner=0
let g:netrw_winsize=20
let g:netrw_liststyle=3
let g:netrw_localrmdir='rm -r'

" set relative line number
set number
set relativenumber

" autocompile
:autocmd BufWritePost * !compiler %

" vim plugins
call plug#begin('~/.config/nvim/plugged')
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
call plug#end()
