" Use pathogen for plugin management
execute pathogen#infect()

" Standard commands

" Unite enabling
let unite_source_history_yank_enable = 1
try
  let g:unite_source_rec_async_command='ag --nocolor --nogroup -g ""'
  call unite#filters#matcher_default#use(['matcher_fuzzy'])
catch
endtry

let g:ycm_python_binary_path = '/usr/bin/python3'

" search a file in the filetree
nnoremap <space><space> :split<cr> :<C-u>Unite -start-insert file_rec/async<cr>
" reset not it is <C-l> normally
:nnoremap <space>r <Plug>(unite_restart)"

" Enable line numbers
set relativenumber 

" Enable syntax highlitghing
syntax on

" Enable filetype specific plugins and autoindent management
filetype plugin indent on

" Allow windows to be closed without saving(they are stored in a buffer)
set hidden

" Better command line completion
set wildmenu

" Show current commands in bottom right corner
set showcmd

" Enable higlighting during search
set hlsearch

" Ignore case during search unless capital letters are used
set ignorecase
set smartcase

" Allow backspacing over autoindent, end of lines, and line breaks
set backspace=indent,eol,start

" If filetype is not specified use autoindent
set autoindent

" Show cursor position in the status bar
set ruler

" Allways display the status line
set laststatus=2

" Save dialog on exit
set confirm

" Don't use beeping. Instead use visual bell
set visualbell

" Visual bell does nothing
set t_vb=

" Use mouse in every mode
set mouse=a

" Set command line height to 2
set cmdheight=2

" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200

" Use <F11> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F10>

" Indentation options
set shiftwidth=4
set softtabstop=4
set expandtab

" Add solarized colorscheme
colorscheme solarized
set background=dark

"KEYBOARD MAPPINGS

autocmd FileType c map <F5> :!gcc -Wall -pedantic % -o Program<CR>
autocmd FileType python map <F5> :!<C-b>0 python %<CR>

" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
" which is the default
map Y y$
  
" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search
nnoremap <C-L> :nohl<CR><C-L>

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

let g:ycm_warning_symbol = "w>"
let g:ycm_error_symbol = "e>"

vn // y:StackOverflow <C-R>"<CR>

