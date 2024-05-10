set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

Plugin 'vim-scripts/indentpython.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'mattn/emmet-vim'
Plugin 'dense-analysis/ale'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'preservim/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-tbone'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'hashivim/vim-terraform'
Plugin 'psf/black'
Plugin 'itchyny/lightline.vim'
Plugin 'tpope/vim-endwise'
Plugin 'elixir-editors/vim-elixir'
Plugin 'mogelbrod/vim-jsonpath'
Plugin 'Valloric/YouCompleteMe'
Plugin 'ron-rs/ron.vim'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" For Lightline
set laststatus=2
if !has('gui_running')
  set t_Co=256
endif
set noshowmode

" personal preferences
set hls

au BufNewFile, BufRead *.py
    autocmd Filetype python setlocal tabstop=4
    autocmd Filetype python setlocal softtabstop=4
    autocmd Filetype python setlocal shiftwidth=4
    autocmd Filetype python setlocal textwidth=0
    autocmd Filetype python setlocal wrapmargin=0
    autocmd Filetype python setlocal wrap
    autocmd Filetype python setlocal expandtab
    autocmd Filetype python setlocal autoindent
    autocmd Filetype python setlocal linebreak
    autocmd Filetype python setlocal fileformat=unix
    autocmd Filetype python setlocal columns=80


:highlight BadWhitespace ctermfg=16 ctermbg=253 guifg=#000000 guibg=#F8F8F0
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

au BufNewFile,BufRead *.jsx,*.js
    autocmd Filetype javascript.jsx setlocal filetype=javascript
    autocmd Filetype javascript setlocal tabstop=2
    autocmd Filetype javascript setlocal softtabstop=2
    autocmd Filetype javascript setlocal shiftwidth=2
    autocmd Filetype javascript setlocal expandtab
    autocmd Filetype javascript setlocal autoindent
    autocmd Filetype javascript setlocal fileformat=unix

au BufNewFile,BufRead *.sql
    autocmd Filetype sql setlocal tabstop=4
    autocmd Filetype sql setlocal shiftwidth=4
    autocmd Filetype sql setlocal autoindent
    autocmd Filetype sql setlocal expandtab
    autocmd Filetype sql setlocal fileformat=unix
	
au BufNewFile,BufRead *.ex
    autocmd Filetype elixir setf eelixir:
    
au BufNewFile,BufRead *.yml
    autocmd Filetype yaml setlocal tabstop=2
    autocmd Filetype yaml setlocal softtabstop=2
    autocmd Filetype yaml setlocal shiftwidth=2
    autocmd Filetype yaml setlocal expandtab
    autocmd Filetype yaml setlocal autoindent
    autocmd Filetype yaml setlocal fileformat=unix

set term=screen-256color
set background=dark
set t_Co=256
set encoding=utf-8
let python_hightlight_all=1
syntax on
set nu
let g:user_emmet_leader_key='<Tab>'
let g:user_emmet_setting = {
  \  'javascript.jsx' : {
    \      'extends' : 'jsx',
    \ },
  \}

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Folding
set foldmethod=indent
set foldlevel=99

"Spacebar folding
nnoremap <space> za


