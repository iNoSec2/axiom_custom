let g:kite_tab_complete=0
set completeopt+=noinsert
autocmd CompleteDone * if !pumvisible() | pclose | endif
"Regle le probleme de couleur de fond qui disparaissait
let &t_ut=''
set bg=dark
set nocompatible              " be iMproved, required
filetype off                  " required
let g:ycm_autoclose_preview_window_after_completion=1
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" All of your Plugins must be added before the following line
Plugin 'Valloric/YouCompleteMe'
" Le plugin est hébergé à https://github.com/itchyny/lightline.vim
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'flazz/vim-colorschemes'
Plugin 'junegunn/goyo.vim'
Plugin 'mileszs/ack.vim'
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
set laststatus=2
let g:airline_powerline_fonts = 1
set ttimeoutlen=50
set guifont=Source\ Code\ Pro\ for\ Powerline
let g:airline#extensions#tabline#enabled = 1
set wildmenu
set shell=/bin/zsh
syntax on
set tabstop=4
filetype on
set nu
set ruler
set mouse=a
set listchars=tab:\|\
set list
set t_Co=256
"indent color for better handling code
"enable at vim start
let g:indent_guides_enable_on_vim_startup = 1
"disable auto colors
let g:indent_guides_auto_colors = 0
"choose my color
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=NONE
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=NONE
"size of tabs
set ts=2 sw=2 et
let g:indent_guides_start_level = 2
let g:indent_guides_size = 1
color gruvbox-git
