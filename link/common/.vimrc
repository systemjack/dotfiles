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

" fix issue with typescript syntax highlight
set regexpengine=0

set modeline
set modelines=5
"set mouse=a
"set ttymouse=xterm2

" configure Ctrl+L to clear the search buffer (and remove current highlight)
" as well as normal Ctrl+L behavior
nnoremap <silent> <C-L> :let @/ = ""<CR><C-L>

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

autocmd Filetype javascript,typescript set ts=2 sw=2 sts=2 expandtab
