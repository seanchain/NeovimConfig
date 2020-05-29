
source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/keys/mappings.vim
source $HOME/.config/nvim/keys/snippets.vim
source $HOME/.config/nvim/keys/floatterm.vim
source $HOME/.config/nvim/general/nerdtree.vim
source $HOME/.config/nvim/general/leaderf.vim

syntax on
set termguicolors
colorscheme base16-onedark

let g:airline_theme = 'onedark'
let g:airline_powerline_fonts = 1
let g:rainbow_active = 1
let g:indentguides_tabchar = '|'
let g:startify_custom_header = [
\ '',                      
\ '   |\ | _  _\  /o._ _  ',
\ '   | \|(/_(_)\/ || | | ',
\ '',
\ ]

let g:clang_format#code_style = 'microsoft'
let g:clang_format#auto_format = 1
let g:autopep8_on_save = 1
let g:autopep8_disable_show_diff = 1

lua require'colorizer'.setup()


autocmd FileType json syntax match Comment +\/\/.\+$+


augroup restore_cursor_shape
  autocmd!
  au VimLeave * set guicursor=a:ver10-blinkoff0
augroup END
