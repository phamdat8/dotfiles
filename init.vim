"load plugins
source $HOME/.config/nvim/vim-plug/plugins.vim
"rubocop
let g:vimrubocop_config = '~/work-space/dotfiles/rubocop/rubocop.yml'
let g:vimrubocop_keymap = 0
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%F

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_ruby_checkers          = ['mri', 'rubocop']
let g:syntastic_ruby_rubocop_exec      = '/home/datpt/.rbenv/shims/ruby /home/datpt/.rbenv/shims/rubocop'
let g:syntastic_ruby_mri_exec = system("rbenv which ruby")
nmap <Leader>r :RuboCop<CR>
"set oreperties
set number
syntax on
set t_Co=256
set cursorline
colorscheme onehalfdark
set encoding=UTF-8
set guifont=AurulentSansMono\ Nerd\ Font:style=Regular
let NERDTreeMinimalUI=1
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
nnoremap q :q<CR>
nnoremap <c-q> :q<CR>

nnoremap <F3> :LazyGit<CR>
nnoremap <Tab> <c-w>w
let NERDTreeMapActivateNode='o'
"let NERDTreeMapCustomOpen='f'
let NERDTreeCustomOpenArgs={'file':{'where': 'v', 'keepopen': '1', 'stay': '0'}, 'dir':{}}
let NERDTreeMapCustomOpen='f'
" Telescope

nnoremap <c-p> :Telescope find_files<CR>
nnoremap <c-f> :Telescope live_grep<CR>
nnoremap <F2> :Telescope buffers<CR>
vnoremap <c-f> y/<c-R>0<CR>
let g:lazygit_floating_window_winblend = 0 " transparency of floating window
let g:lazygit_floating_window_scaling_factor = 0.9 " scaling factor for floating window
let g:lazygit_floating_window_corner_chars = ['╭', '╮', '╰', '╯'] " customize lazygit popup window corner characters
let g:lazygit_floating_window_use_plenary = 0 " use plenary.nvim to manage floating window if available
let g:lazygit_use_neovim_remote = 1 " fallback to 0 if neovim-remote is not installed

let g:indent_blankline_show_current_context = 1
