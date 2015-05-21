syntax enable
set number
set ruler
set list
set listchars=tab:>-,trail:-,nbsp:%,extends:>,precedes:<,eol:<
set incsearch
set hlsearch
set nowrap
set showmatch
set whichwrap=h,l
set nowrapscan
set ignorecase
set smartcase
set hidden
set history=2000
set autoindent
"set expandtab
set tabstop=4
set shiftwidth=2
set helplang=ja

"colorscheme desert

nnoremap ;  :
nnoremap :  ;
vnoremap ;  :
vnoremap :  ;

nnoremap <Space>w  :<C-u>w<CR>
nnoremap <Space>q  :<C-u>q<CR>
nnoremap <Space>Q  :<C-u>q!<CR>

nnoremap <Space>h  ^
nnoremap <Space>l  $

nnoremap k   gk
nnoremap j   gj
vnoremap k   gk
vnoremap j   gj
nnoremap gk  k
nnoremap gj  j
vnoremap gk  k
vnoremap gj  j


inoremap jk  <Esc>

nnoremap <Space>/  *<C-o>
nnoremap g<Space>/ g*<C-o>

nnoremap <expr> n <SID>search_forward_p() ? 'nzv' : 'Nzv'
nnoremap <expr> N <SID>search_forward_p() ? 'Nzv' : 'nzv'
vnoremap <expr> n <SID>search_forward_p() ? 'nzv' : 'Nzv'
vnoremap <expr> N <SID>search_forward_p() ? 'Nzv' : 'nzv'

function! s:search_forward_p()
  return exists('v:searchforward') ? v:searchforward : 1
endfunction

nnoremap <Space>o  :<C-u>for i in range(v:count1) \| call append(line('.'), '') \| endfor<CR>
nnoremap <Space>O  :<C-u>for i in range(v:count1) \| call append(line('.')-1, '') \| endfor<CR>

nnoremap <silent> <Esc><Esc> :<C-u>nohlsearch<CR>

nnoremap ZZ <Nop>
nnoremap ZQ <Nop>

nnoremap Q gq

nnoremap gs  :<C-u>%s///g<Left><Left><Left>
vnoremap gs  :s///g<Left><Left><Left>



set nocompatible               " be iMproved
filetype off


if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#begin(expand('~/.vim/bundle/'))
  NeoBundleFetch 'Shougo/neobundle.vim'
  NeoBundle 'Shougo/neobundle.vim'
  NeoBundle 'Shougo/vimproc.vim'
 "NeoBundle 'Shougo/neocomplete.vim'
  
  NeoBundle 'Shougo/neomru.vim'
  NeoBundle 'scrooloose/nerdtree'
  NeoBundle 'tpope/vim-rails'
  NeoBundle 'tpope/vim-endwise'
  NeoBundle 'tomtom/tcomment_vim'
  NeoBundle 'tpope/vim-surround'
  NeoBundle 'vim-scripts/AnsiEsc.vim'
  NeoBundle 'bronson/vim-trailing-whitespace'

  call neobundle#end()
endif
filetype plugin indent on     " required!
filetype indent on


imap { {}<LEFT>
imap [ []<LEFT>
imap ( ()<LEFT>

set noswapfile


nnoremap <silent><C-e> :NERDTree<CR>
