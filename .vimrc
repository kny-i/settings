set number
set ruler
syntax on
set cursorline
set autoindent

inoremap jk <ESC>
inoremap { {}<ESC>i<CR><ESC><S-o>
inoremap ( ()<LEFT>
inoremap [ []<LEFT>
inoremap ' ''<LEFT>
inoremap " ""<LEFT>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-f> <Right>
inoremap <C-b> <Left>
  
nnoremap <CR> o<ESC>
nnoremap sov :source ~/settings/.vimrc

