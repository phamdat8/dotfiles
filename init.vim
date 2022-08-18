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
nnoremap <c-s> <Esc>:w<CR>
inoremap <c-s> <Esc>:w<CR>
" Press Ctrl+Q for close file
" Press Ctrl+Q for close file
nnoremap <c-q> :q<CR>

nnoremap <Tab> :tabNext<CR>
nnoremap <F3> :LazyGit<CR>

let g:lazygit_floating_window_winblend = 0 " transparency of floating window
let g:lazygit_floating_window_scaling_factor = 0.9 " scaling factor for floating window
let g:lazygit_floating_window_corner_chars = ['╭', '╮', '╰', '╯'] " customize lazygit popup window corner characters
let g:lazygit_floating_window_use_plenary = 0 " use plenary.nvim to manage floating window if available
let g:lazygit_use_neovim_remote = 1 " fallback to 0 if neovim-remote is not installed
