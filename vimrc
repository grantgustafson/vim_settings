set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'flazz/vim-colorschemes.git'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-fugitive'

call vundle#end()            " required
filetype plugin indent on    " required
syntax enable
set background=dark
set number
let g:solarized_termtrans = 1
colorscheme molokai_dark 
let g:airline#extensions#tabline#enabled = 1
set smartcase
set list       " show trailing whitespace and tabs
set listchars=tab:\|\ ,trail:●,extends:>,precedes:<,nbsp:+
set tabstop=4
set pastetoggle=<F2>
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
set hidden
" To open a new empty buffer
 " This replaces :tabnew which I used to bind to this mapping
nmap <leader>T :enew<cr>

 " Move to the next buffer
nmap <Space>l :bnext<CR>

 " Move to the previous buffer
nmap <Space>h :bprevious<CR>
let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9

cmap w!! w !sudo tee %
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|svn)|\_site)$',
  \ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg)$',
\}
let g:NERDTreeWinPos = 'right'
let g:NERDTreeDirArrows=1 " Arrow symbols next to directories
map <Leader>n :NERDTreeToggle<cr>
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
