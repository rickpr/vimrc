set nocompatible
filetype plugin indent on
filetype off 
set t_Co=256

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'L9'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'tpope/vim-rails'
" Plugin 'bling/vim-airline'
Plugin 'adimit/prolog.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'

" All of your Plugins must be added before the following line
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
colorscheme default

set laststatus=2
set shiftwidth=2
set softtabstop=2
set tabstop=2
set tw=80
set expandtab
set ttimeoutlen=50
" let g:airline_powerline_fonts = 1
" let g:airline_theme = 'badwolf'
map <Leader> <Plug>(easymotion-prefix)
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
