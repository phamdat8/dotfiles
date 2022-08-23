" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " search    
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    " search file ctrl P
    Plug 'rking/ag.vim'
    " theme
    Plug 'rakr/vim-one'
    Plug 'sonph/onehalf', { 'rtp': 'vim' }
    " auto complete
    Plug 'maxboisvert/vim-simple-complete' 
    " lazygit via neovim
    Plug 'kdheepak/lazygit.nvim', { 'branch': 'nvim-v0.4.3' }

    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }

    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'ryanoasis/vim-devicons'

    Plug 'vim-syntastic/syntastic'
    Plug 'ngmy/vim-rubocop'

    Plug 'lukas-reineke/indent-blankline.nvim'
call plug#end()
