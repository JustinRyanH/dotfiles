" Setup Vundle
set nocompatible
filetype off

set t_Co=256 " We support 256 colors
set laststatus=2 " Force vim-airline to always display

let g:ycm_always_populate_location_list = 1
let g:airline_powerline_fonts = 1

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'fatih/vim-go'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'edkolev/tmuxline.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'bling/vim-airline'
Plugin 'majutsushi/tagbar'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'

Plugin 'rust-lang/rust.vim'
Plugin 'racer-rust/vim-racer'



" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"

set tabstop=2
set shiftwidth=2
set expandtab

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

set hidden

let g:racer_cmd = "/home/justin/Tools/racer/target/release/racer"
let $RUST_SRC_PATH = "/usr/local/src/rust/src"
au BufRead,BufNewFile *.rs set filetype=rust

source ~/.vimrc.custom

