" Vundle Plugins
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle
Plugin 'VundleVim/Vundle.vim'

" Theme
Plugin 'nanotech/jellybeans.vim'

" Git/github integration
Plugin 'tpope/vim-fugitive'
Plugin 'mhinz/vim-signify'
Plugin 'airblade/vim-gitgutter'

" Tools
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'rking/ag.vim'
Plugin 'Shougo/neocomplete.vim'
Plugin 'Shougo/unite.vim'
Plugin 'Shougo/neomru.vim'
Plugin 'majutsushi/tagbar'
Plugin 'm943040028/cscope.vim'
Plugin 'Konfekt/FastFold'

call vundle#end()
filetype plugin indent on    " required

set encoding=utf-8

" Look
set background=dark
colorscheme jellybeans
if has('gui_running')
  set guifont=DejaVu\ Sans\ Mono\ 10
endif

" line numbers
set number
" relative line numbers
set rnu
" no menus, scrollbars, or other junk
set guioptions=

" make backspace delete characters
set backspace=2

" I like my leader being ','. It's easier to reach
let mapleader = ","

" disable backup and swap files
set nobackup
set noswapfile

" use the OS clipboard
set clipboard=unnamed

" allow the cursor to pass the last character
set virtualedit=onemore
" store more command history
set history=100
" store a bunch of undo history
set undolevels=400
" allow buffer switching without saving
set hidden

" Show matching brackets/parenthesis
set showmatch
" Don't blink
set matchtime=0
" Find as you type search
set incsearch
" Highlight search terms
set hlsearch
" Windows can be 0 line high
set winminheight=0
" Case insensitive search
set ignorecase
" Case sensitive if we type an uppercase
set smartcase

" Window navigation
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-L> <C-W>l
map <C-H> <C-W>h

nnoremap <C-right> :tabn<cr>
nnoremap <C-left> :tabp<cr>
nnoremap <C-t> :tabnew<cr>

" Use Esc to hide search highlights
nnoremap <Esc> :nohl<CR>

" Indent options
set autoindent
set noexpandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Folding
set foldmethod=syntax
set foldnestmax=10
set nofoldenable
set foldlevel=1

" Neocomplete
let g:neocomplete#enable_at_startup = 1

" Make Markdown actually detected as Markdown
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" Fugitive/Git Shortcuts
nnoremap <leader>g :Gstatus<CR>4j

" Unite mappings
call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#filters#sorter_default#use(['sorter_rank'])
call unite#set_profile('files', 'context.smartcase', 1)
call unite#custom#source('line,outline','matchers','matcher_fuzzy')
call unite#custom#source('file_rec', 'ignore_pattern', 'node_modules/')
call unite#custom#source('file_rec', 'ignore_pattern', '.git/')
let g:unite_source_history_yank_enable = 1

nnoremap <leader>e :Unite -start-insert file_mru<cr>
nnoremap <leader>f :Unite -start-insert file<cr>
nnoremap <leader>s :Unite -start-insert buffer<cr>
nnoremap <leader>y :Unite history/yank<cr>
nnoremap <C-p> :Unite -start-insert file_rec<cr>

" Ag, the silver searcher
map <C-\> :execute "Ag " . expand("<cword>") <CR>

" GitGutter
let g:gitgutter_realtime = 0
let g:gitgutter_eager = 0

" Neocomplete
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 2

" TagBar
nmap <F12> :TagbarToggle<CR>

" AirLine
let g:airline#extensions#tabline#enabled = 1

" Local stuff (access_token, www folder, etc)
so ~/.local.vim

