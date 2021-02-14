let mapleader=","
"

nmap <Leader>or :set relativenumber<CR>
nmap <Leader>cr :set norelativenumber<CR>

" tab and space
set softtabstop=4
set shiftwidth=4
set expandtab

" appearance
set noshowmode

" edit
set number
set cursorline
set noswapfile
set showtabline=2
set clipboard=unnamed
set ruler
set wrap
set linebreak
set showcmd
set scrolloff=3

" tab
set splitbelow
set splitright

" search
set ignorecase
set hlsearch
set incsearch

" filetype
filetype on
filetype indent on
filetype plugin on

" color
syntax on
 
" operation
inoremap mm <Esc>
vnoremap mm <Esc>
nnoremap <Enter> o
vnoremap <Tab> >
vnoremap <S-Tab> <
nnoremap <Tab> >>
nnoremap <Tab> <<

" plugin
" Vim-Plug
" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" NERDTree
nnoremap <silent> <F2> :NERDTreeToggle<Enter>
" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif
