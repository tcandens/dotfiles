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
Plugin 'majutsushi/tagbar'
" Language/Syntax
Plugin 'wavded/vim-stylus'
Plugin 'evidens/vim-twig'
Plugin 'othree/yajs.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'digitaltoad/vim-jade'
Plugin 'xsbeats/vim-blade'
" Themes
"Plugin 'flazz/vim-colorschemes'
Plugin 'nielsmadan/harlequin'
Plugin 'morhetz/gruvbox'
Plugin 'altercation/vim-colors-solarized'

call vundle#end()
filetype plugin indent on

let mapleader=' '

set clipboard=unnamed

" Delete Current Buffer
map <leader>bx :NERDTreeClose<cr> :bd<cr>

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

autocmd Filetype php setlocal ts=4 sw=4 sts=4

set list
set list listchars=tab:»·,trail:·,nbsp:·

syntax enable
set background=dark
"set t_Co=256
"let g:solarized_termcolors=256
colorscheme gruvbox
let g:gruvbox_contrast_dark="hard"
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
"map <C-T> :NERDTreeToggle<CR>
map <leader>t :NERDTreeToggle<CR>
map <leader>sv :source $MYVIMRC<CR>

" CTRL-P keymappings
let g:ctrlp_map = '<C-p>'

let g:ctrlp_custom_ignore = {
  \ 'dir': '\.git$\|node_modules$\|bower_components$',
  \ }
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" Powerline fonts
let g:airline_powerline_fonts=1
let g:airline_theme='tomorrow'
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#tab_nr_type = 2
let g:airline#extensions#tabline#show_tab_nr = 1
set laststatus=2

" Highlight current cursorline
hi CursorLine cterm=NONE ctermbg=0
augroup CursorLine
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  au WinLeave * setlocal nocursorline
augroup END

" Auto Remove Trailing Whitespace
autocmd BufWritePre * :%s/\s\+$//e
