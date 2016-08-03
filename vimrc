" Use pathogen for plugin management
execute pathogen#infect()

" Standard commands
let g:ycm_python_binary_path = '/usr/bin/python3'

" Enable line numbers
set relativenumber number

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

" Set command line height to 2
set cmdheight=2

" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200

" Use <F10> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F10>

" Indentation options
set shiftwidth=4
set softtabstop=4
set expandtab

" Add solarized colorscheme
colorscheme solarized
set background=dark

"KEYBOARD MAPPINGS

autocmd FileType c map <F5> :!/usr/bin/gcc -Wall -pedantic % -o Program<CR>
autocmd FileType cpp set makeprg=cd\ build\ &&\ /usr/bin/make
autocmd FileType cpp map <F5> :make run<CR>
autocmd FileType cpp map <F4> :make<CR>
autocmd FileType python map <F5> :w<CR> :Dispatch python %<CR>
autocmd FileType perl :nnoremap <F5> :w<cr>:!/usr/bin/perl -w %:p<CR>

" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
" which is the default
map Y y$

" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search
nnoremap <leader>l :nohl<CR>

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

let g:ycm_warning_symbol = "w>"
let g:ycm_error_symbol = "e>"

vnoremap // y:StackOverflow <C-R>"<CR>

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/


" Disable arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
" disable arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

let maplocalleader="<space>"
nnoremap <leader>sv :source $MYVIMRC<CR>
nnoremap <leader>ev :vsplit $MYVIMRC<CR>
nnoremap K d$O<esc>p
nnoremap <leader>j d$o<esc>p

nnoremap H 0
nnoremap L $

nnoremap <leader>sif :vimgrep // **/*<left><left><left><left><left><left>

au bufReadPost quickfix :nnoremap <localleader>n :cne<cr>
au bufReadPost quickfix :nnoremap <localleader>p :cpre<cr>

au FileType python :iabbrev pythonprog #!/usr/bin/python<cr><cr>def main():<cr><cr><cr><backspace>if __name__ == "__main__":<cr>main()<up><up><up><tab>

nnoremap <leader>et :vsplit ~/.tmux.conf<cr>
nnoremap <leader>st :!tmux source ~/.tmux.conf<cr>

iabbrev perlprog #!/usr/bin/perl

nnoremap <F6> :set ft=perl<cr>i#!/usr/bin/perl<esc>o<esc>x

set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/

" Always show statusline
set laststatus=2

" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256
