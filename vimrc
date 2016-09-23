so ~/.vim/plugins.vim

if has ('autocmd') " Remain compatible with earlier versions
  augroup vimrc     " Source vim configuration upon save
    autocmd! BufWritePost $MYVIMRC source % | echom "Reloaded " . $MYVIMRC | redraw
    autocmd! BufWritePost $MYGVIMRC if has('gui_running') | so % | echom "Reloaded " . $MYGVIMRC | endif | redraw
  augroup END
endif " has autocmd

filetype on
set encoding=utf-8
set mouse=

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

" TagBar
nmap <F12> :TagbarToggle<CR>

" Cscope
" s: Find this C symbol
nnoremap  <leader>fs :call CscopeFind('s', expand('<cword>'))<CR>
" g: Find this definition
nnoremap  <leader>fg :call CscopeFind('g', expand('<cword>'))<CR>
" d: Find functions called by this function
nnoremap  <leader>fd :call CscopeFind('d', expand('<cword>'))<CR>
" c: Find functions calling this function
nnoremap  <leader>fc :call CscopeFind('c', expand('<cword>'))<CR>
" t: Find this text string
nnoremap  <leader>ft :call CscopeFind('t', expand('<cword>'))<CR>
" e: Find this egrep pattern
nnoremap  <leader>fe :call CscopeFind('e', expand('<cword>'))<CR>
" f: Find this file
nnoremap  <leader>ff :call CscopeFind('f', expand('<cword>'))<CR>
" i: Find files #including this file
nnoremap  <leader>fi :call CscopeFind('i', expand('<cword>'))<CR>

" YouCompleteMe
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_python_binary_path = 'python'

