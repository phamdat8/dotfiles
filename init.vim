source $HOME/.config/nvim/vim-plug/plugins.vim
set number
syntax on
set t_Co=256
set cursorline
colorscheme onehalfdark
let g:airline_theme='onehalfdark'
" Type jj to exit insert mode quickly.
inoremap jj <Esc>
" Press the space bar to type the : character in command mode.
nnoremap <space> :

" Press Crtl+S for save file
nnoremap <c-s> :w<CR>
" Press Ctrl+Q for close file
nnoremap <c-q> :q<CR>

nnoremap <Tab> :tabNext<CR>
