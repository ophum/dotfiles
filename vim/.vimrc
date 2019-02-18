if &compatible
  set nocompatible
endif

let s:dein_dir = expand('~/.cache/dein')

let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

" dein.vimが存在していない場合はgithubからclone
if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  let s:toml_dir = expand('~/.config/vim')

  call dein#load_toml(s:toml_dir . '/dein.toml', {'lazy': 0})

  call dein#load_toml(s:toml_dir . '/dein_lazy.toml', {'lazy': 1})

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif
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


