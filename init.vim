set nocompatible
filetype plugin indent on
filetype off 
set t_Co=256

" Allows switching buffers without saving
set hidden

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'bling/vim-airline'
Plugin 'leafgarland/typescript-vim'
Plugin 'peitalin/vim-jsx-typescript'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'mileszs/ack.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'numirias/semshi'
Plugin 'tpope/vim-dispatch'
Plugin 'vim-test/vim-test'

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

set number
set cc=80,120
set laststatus=2
set shiftwidth=2
set softtabstop=2
set tabstop=2
set tw=120
set expandtab
set ttimeoutlen=50

let g:airline_powerline_fonts = 1
let g:airline_theme = 'base16_summerfruit'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

map <Leader> <Plug>(easymotion-prefix)
map <Tab> :bnext<CR>
map <S-Tab> :bprevious<CR>

" Use the_silver_searcher instead of Ack
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
  command! -nargs=1 Ag Ack <args>
endif

" Performance for Ctrl+P https://stackoverflow.com/a/22784889
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

" Pytest bindings
let test#strategy = 'dispatch'
let test#python#runner = 'pytest'
noremap <Leader>r :TestFile -s --disable-warnings<CR>
noremap <Leader>q :TestNearest -s --disable-warnings<CR>

" Python Stuff
let g:syntastic_python_python_exec = 'python3'
let g:syntastic_python_checkers = ['python']
noremap <Leader>d Oimport pdb; pdb.set_trace()<Esc>
