set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

" My bundles
Bundle 'Lokaltog/vim-powerline'
Bundle 'cakebaker/scss-syntax.vim'
Bundle 'chriskempson/base16-vim'
Bundle 'danro/rename.vim'
Bundle 'kchmck/vim-coffee-script'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdcommenter'
Bundle 'slim-template/vim-slim'
Bundle 'thoughtbot/vim-rspec'
Bundle 'tpope/vim-bundler'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-surround'
Bundle 'nono/vim-handlebars'
Bundle 'vim-scripts/VimClojure'
Bundle 'elixir-lang/vim-elixir'

" General
filetype plugin indent on

set laststatus=2

set splitbelow
set splitright

set nobackup
set nowb
set noswapfile

set tabstop=2 shiftwidth=2
set expandtab
set wrap

set relativenumber

syntax on
set hlsearch

set t_Co=256
" Color scheme
colorscheme base16-default
set background=dark
set cursorline

set pastetoggle=<F2>
set clipboard=unnamed

let g:Powerline_symbols = 'fancy'

let g:ctrlp_show_hidden = 1

" Mappings
let mapleader = ','

nmap <Leader>bi :source $MYVIMRC<CR>:BundleInstall<cr>
map <Leader>vi :tabe $MYVIMRC<CR>
map <Leader>w <C-w>w
map <Leader>vu :RVunittest<CR>

map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" K and J behave as expected for long lines
nmap k gk
nmap j gj

map 0 ^

map <C-h> :nohl<cr>
map <C-s> <esc>:w<CR>
imap <C-s> <esc>:w<CR>
map <C-t> <esc>:tabnew<CR>
map <C-x> <C-w>c
