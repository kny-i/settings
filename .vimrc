set number

syntax on

set ruler
set cursorline
set cindent
inoremap { {}<ESC>i<CR><ESC><S-o>

inoremap jk <ESC>
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
colorscheme dracula
