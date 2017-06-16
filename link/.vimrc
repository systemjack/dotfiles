"execute pathogen#infect()

set nocompatible
set ai
set hlsearch
set incsearch
syntax on
filetype plugin indent on
set background=dark
set ruler
set ignorecase
set smartcase
set showcmd
set history=50

set modeline
"set mouse=a
"set ttymouse=xterm2

"nmap <F8> :TagbarToggle<CR>
"map <Leader>p :set paste<CR>o<esc>"*]p:set nopaste<cr>
"map <Leader>p :set paste<CR>o<esc>
"map <Leader>p :set paste<CR>o
"map <Leader>P<esc> :set nopaste<CR>

autocmd BufNewFile,BufRead *.json set ft=javascript

autocmd BufNewFile,BufRead *.py call SetPythonOptions()
function SetPythonOptions()
	set tabstop=8 
	set expandtab 
	set shiftwidth=4 
	set softtabstop=4
endfunction
