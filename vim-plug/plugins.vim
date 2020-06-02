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
    " Base16 color schemes
    Plug 'chriskempson/base16-vim'
    " Autocompletion coc
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Vim airline plugin
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    " React snippets
    Plug 'epilande/vim-react-snippets'
    " Rainbow brackets
    Plug 'luochen1990/rainbow'
    " Indent guides
    Plug 'thaerkh/vim-indentguides'
    " LeaderF plugin for fuzzy search
    Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
    " Nvim colorizer
    Plug 'norcalli/nvim-colorizer.lua'
    " Vim Starify
    Plug 'mhinz/vim-startify'
    " Vim Devicons
    Plug 'ryanoasis/vim-devicons'
    " Vim Snippets
    Plug 'honza/vim-snippets'
    " Nerd Commenter
    Plug 'preservim/nerdcommenter'
    " Float Terminal
    Plug 'voldikss/vim-floaterm'
    " Clang Format
    Plug 'rhysd/vim-clang-format'
    " Python Autopep8 support
    Plug 'tell-k/vim-autopep8'
    " Vim Highlighted Yank
    Plug 'machakann/vim-highlightedyank'
    " SCSS vim support
    Plug 'cakebaker/scss-syntax.vim'
call plug#end()
