
set nocompatible " use vim defaults
filetype off "required for vundle

set rtp+=~/.vim/bundle/vundle/ "required for vundle
call vundle#rc() "required for vundle

Bundle 'gmarik/vundle' 

"Bundles here
"Bundle  'Valloric/YouCompleteMe'
Bundle  'mileszs/ack.vim'
Bundle  'kien/ctrlp.vim'
Bundle  'scrooloose/syntastic'
Bundle  'majutsushi/tagbar'
Bundle  'Lokaltog/vim-easymotion'
Bundle	'chazy/cscope_maps'
Bundle	'scrooloose/nerdtree'
Bundle	'tpope/vim-rails'
Bundle	'thoughtbot/vim-rspec'
Bundle	'vim-ruby/vim-ruby'
"colorschemes
Bundle  'wgibbs/vim-irblack'
Bundle  'altercation/vim-colors-solarized'
Bundle  'noahfrederick/Hemisu'
Bundle  'nanotech/jellybeans.vim'
Bundle  'tomasr/molokai'
Bundle  'morhetz/gruvbox'
Bundle  'vim-scripts/Wombat'
Bundle  'dhruvasagar/vim-railscasts-theme'


set scrolloff=3 " keep 3 lines when scrolling
"set ai " set auto-indenting on for programming
 
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
set shiftwidth=2
set tabstop=2 
set expandtab
set backspace=indent,eol,start " make that backspace key work the way it should

"Ctrlp show dotfiles
let g:ctrlp_show_hidden = 1
"Clear Search highlight
nnoremap <leader><space> :noh<cr>
"shortcut for :Ack
nnoremap <leader>a :Ack 
let g:EasyMotion_leader_key = '<Leader>'
map <F8> :TagbarToggle<CR>
map <F7> :NERDTreeToggle<CR>

" RSpec.vim mappings
 map <Leader>t :call RunCurrentSpecFile()<CR>
 map <Leader>s :call RunNearestSpec()<CR>
 map <Leader>l :call RunLastSpec()<CR>
 map <Leader>a :call RunAllSpecs()<CR>

set t_Co=256
syntax on " turn syntax highlighting on by default
filetype plugin indent on " load indent file for specific file type
"Fix html indentation problem in vim 7.4
let g:html_indent_inctags = "html,body,head,tbody"

"colorscheme hemisu
"set background=dark
"colorscheme hemisu
"let g:solarized_termcolors=256
colorscheme jellybeans
