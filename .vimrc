set fenc=utf-8
set nobackup
set noswapfile
set autoread

set showcmd

set laststatus=2
set statusline=%F\ \|\ %m%r%h%w%=%{&ff}\ \|\ %{&fenc!=''?&fenc:&enc}\ \|\ [%l/%L\ %P]
set number
set title
set ambiwidth=double
set showmatch
set matchtime=1

set whichwrap=b,s,[,],<,>
set backspace=indent,eol,start
if has("syntax")
	syntax on
endif

set tabstop=2
set shiftwidth=2
set smartindent

set ignorecase
set smartcase
set wrapscan
set hlsearch
nmap <Esc><Esc> : nohlsearch<CR><Esc>
