set number


set ruler
syntax on
set cursorline
set cindent
syntax enable

inoremap jk <ESC>
inoremap { {}<ESC>i<CR><ESC><S-o>

inoremap ( ()<LEFT>
inoremap [ []<LEFT>
inoremap ' ''<LEFT>
inoremap " ""<LEFT>

inoremap <C-n> <Down>
inoremap <C-p> <Up>
inoremap <C-f> <Right>
inoremap <C-b> <Left>

inoremap <C-e> <ESC>A
inoremap <C-a> <ESC>I
inoremap <C-l> <C-p>  
nnoremap <CR> o<ESC>
nnoremap sov :source ~/settings/.vimrc


packadd! dracula
syntax enable
colorscheme dracula
