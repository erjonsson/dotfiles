
set nocompatible " use vim defaults
filetype off "required for vundle

set rtp+=~/.vim/bundle/vundle/ "required for vundle
call vundle#rc() "required for vundle

Bundle 'gmarik/vundle' 

"Bundles here
Bundle  'Valloric/YouCompleteMe'
Bundle  'mileszs/ack.vim'
Bundle  'kien/ctrlp.vim'
Bundle  'scrooloose/syntastic'
Bundle  'majutsushi/tagbar'
Bundle  'Lokaltog/vim-easymotion'
"colorschemes
Bundle  'wgibbs/vim-irblack'
Bundle  'altercation/vim-colors-solarized'
Bundle  'noahfrederick/Hemisu'
Bundle  'nanotech/jellybeans.vim'
Bundle  'tomasr/molokai'
Bundle  'morhetz/gruvbox'
Bundle  'vim-scripts/Wombat'

inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

set scrolloff=3 " keep 3 lines when scrolling
set ai " set auto-indenting on for programming
 
set showcmd " display incomplete commands
set nobackup " do not keep a backup file
set relativenumber " show relative line numbers
set ruler " show the current row and column
 
set hlsearch " highlight searches
set incsearch " do incremental searching
set showmatch " jump to matches when entering regexp
set ignorecase " ignore case when searching
set smartcase " no ignorecase if Uppercase char present
 
set visualbell t_vb= " turn off error beep/flash
set novisualbell " turn off visual bell
set shiftwidth=4
set tabstop=4 

set backspace=indent,eol,start " make that backspace key work the way it should
"Ctrlp show dotfiles
let g:ctrlp_show_hidden = 1
"Clear Search highlight
nnoremap <leader><space> :noh<cr>
"shortcut for :Ack
nnoremap <leader>a :Ack 
"easymotion word is ,
let g:EasyMotion_mapping_w = ','
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
map <F8> :TagbarToggle<CR>

let g:ycm_global_ycm_extra_conf = '~/.ycm_global_ycm_extra_conf.py'

set t_Co=256
syntax on " turn syntax highlighting on by default
filetype plugin indent on " load indent file for specific file type

colorscheme hemisu
set background=dark
