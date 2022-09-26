set number
set ruler
set relativenumber
syntax on
set cursorline

inoremap jk <ESC>
inoremap { {}<ESC>i<CR><ESC><S-o>
inoremap ( ()<LEFT>
inoremap [ [] <LEFT>
inoremap ' '' <LEFT>
inoremap " "" <LEFT>
inoremap <C-k> <RIGHT>
inoremap <C-j> <ESC><S-a>;

nnoremap <CR> o<ESC>

nnoremap sov :source ~/settings/.vimrc
