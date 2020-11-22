" Thanks to https://youtu.be/XA2WjJbmmoM 🥰

" disable backwards compatibility
set nocompatible

" enable syntax highlighting
syntax enable

" search through subfolders
set path+=**
set wildmenu

" set relative line number
set number
set relativenumber

" autocompile
:autocmd BufWritePost * !compiler %

" vim plugins
call plug#begin('~/.config/nvim/plugged')
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
call plug#end()
