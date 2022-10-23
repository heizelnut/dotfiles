" disable backwards compatibility
set nocompatible

" enable hidden buffers
set hidden

" enable syntax highlighting
syntax enable

" mouse selection
set mouse=a

" tab spacing
set tabstop=4
set shiftwidth=4

" search through subfolders
set path+=**
set wildmenu

colorscheme zellner

" delete hidden buffers
if !exists("*DeleteHiddenBuffers") " Clear all hidden buffers when running 
	function DeleteHiddenBuffers() " Vim with the 'hidden' option
		let tpbl=[]
		call map(range(1, tabpagenr('$')), 'extend(tpbl, tabpagebuflist(v:val))')
		for buf in filter(range(1, bufnr('$')), 'bufexists(v:val) && index(tpbl, v:val)==-1')
			silent execute 'bwipeout' buf
		endfor
	endfunction
endif
command! DeleteHiddenBuffers call DeleteHiddenBuffers()

" easier split navigation
nnoremap <C-h> <C-w><C-h>
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>

" easier buffer navigation
nnoremap <C-n> :bn<CR>
nnoremap <C-p> :bp<CR>
nnoremap <C-q> :bd<CR>

" open file tree with 't' in normal mode
:nmap t :Vexplore<CR>

" netrw config
let g:netrw_banner=0
let g:netrw_liststyle=3
let g:netrw_browse_split=2
let g:netrw_altv=1
let g:netrw_winsize=80
let g:netrw_localrmdir='rm -r'
set switchbuf=usetab,newtab

" set relative line number
set number
set relativenumber

" copy and paste
:vmap <C-c> "+y <enter>
:nnoremap <C-v> "+P <enter>

" terminal emulator
command Trm :set splitbelow | split | res 10 | terminal
nnoremap T <Esc>:Trm<CR>
tnoremap <Esc> <C-\><C-n>

" compile & build
:nmap <C-c> <C-k>:!compiler % <enter>
:nmap <C-b> <C-h>:!make <enter>
" :noremap <C-i> :!sudo make install <enter>

" execute visual selection in shell
:vmap <C-x> :.w !sh <enter>

" save file from normal mode
:nmap <C-s> :w<CR>

" tidy up selection to 80 cols
:vmap Q gq

" autocompletition
set complete+=kspell
set completeopt=menuone,longest
set shortmess+=c

function TogglePresentationMode()
    if !exists('b:presentation')
        let b:presentation=1
		Goyo
		nmap <Space> :bn<Cr>
		nmap + :bn<Cr>
		nmap - :bN<Cr>
    else
        unlet b:presentation
		Goyo
		unmap <Space>
		unmap +
		unmap -
    endif

    return ""
endfun

nnoremap <C-l> :call TogglePresentationMode()<Cr>:<Esc>

" templates
au BufNewFile * silent! 0r ~/.config/nvim/templates/skeleton.%:e

" download plugin manager if not present
let pluggedLocation='~/.config/nvim/autoload/plug.vim'
if (glob(pluggedLocation) == "")
	let url="https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
	execute "!curl -fLo " .. pluggedLocation .. " --create-dirs " .. url
endif

" set g:android_sdk_root = "
" /opt/android-sdk"


" vim plugins
call plug#begin('~/.config/nvim/plugged')
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'vim-scripts/AutoComplPop'
Plug 'junegunn/goyo.vim' 
Plug 'hsanson/vim-android'
Plug 'alexanderjeurissen/lumiere.vim'
" Plug 'morhetz/gruvbox'
call plug#end()
