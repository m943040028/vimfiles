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
Plugin 'Shougo/unite.vim'
Plugin 'Shougo/neomru.vim'
Plugin 'majutsushi/tagbar'
"Plugin 'jeaye/color_coded'
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'rdnetto/YCM-Generator', { 'branch': 'stable'}
Plugin 'brookhong/cscope.vim'

Plugin 'google/vim-maktaba'
Plugin 'google/vim-codefmt'
Plugin 'google/vim-glaive'

call vundle#end()
