"Optimized for use with Gnome-Terminal on Ubuntu

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins
" --------------
" Plugin Manager
Plugin 'gmarik/Vundle.vim'
" Interface
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'Valloric/YouCompleteMe'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'Raimondi/delimitMate'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-unimpaired'
Plugin 'scrooloose/nerdcommenter'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'tpope/vim-fugitive'
Plugin 'mattn/emmet-vim'
" Language/Syntax
Plugin 'pangloss/vim-javascript'
Plugin 'wavded/vim-stylus'
Plugin 'evidens/vim-twig'
" Themes
Plugin 'flazz/vim-colorschemes'
Plugin 'nielsmadan/harlequin'
Plugin 'morhetz/gruvbox'

call vundle#end()
filetype plugin indent on

let mapleader=' '

" Source VIMRC
nnoremap <leader>sv :source $MYVIMRC<cr>
" Delete Current Buffer
map <leader>bx :NERDTreeClose :bd<cr>
map [[ :bprev<cr>
map ]] :bnext<cr>

" DelimitMate Options
let delimitMate_expand_cr = 2
let delimitMate_expand_space = 1

set nobackup
set nowritebackup
set noswapfile
set history=50
set ruler
set showcmd
set autowrite
set hidden

set number
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab

set list
set list listchars=tab:»·,trail:·,nbsp:·

syntax enable
set background=dark
set t_Co=256
colorscheme gruvbox 
" Force terminal italics on escape characters
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"

" YouCompleteMe Errors Fix
set shortmess+=c

" UltiSnip Bindings
let g:UltiSnipsExpandTrigger="<c-o>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"

" NERDTree keymappings
map <C-t> :NERDTreeToggle<CR>
"map <C-T> :20Lexplore<CR>

" CTRL-P keymappings
let g:ctrlp_map = '<C-p>'
"CTRL-P Ignore
"let g:ctrlp_custom_ignore = {
  "\ 'dir': '\v[\/]\(.git|node_modules)$',
"\ }

let g:ctrlp_custom_ignore = {
  \ 'dir': '\.git$\|node_modules$\|bower_components$',
  \ }
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" Powerline fonts
let g:airline_powerline_fonts=1
let g:airline_theme='tomorrow'
let g:airline#extensions#tabline#enabled=1
set laststatus=2

" Highlight current cursorline
hi CursorLine cterm=NONE ctermbg=0
augroup CursorLine
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  au WinLeave * setlocal nocursorline
augroup END
