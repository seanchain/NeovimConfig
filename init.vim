
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/keys/mappings.vim
source $HOME/.config/nvim/keys/snippets.vim
source $HOME/.config/nvim/keys/coc.vim
"source $HOME/.config/nvim/general/coc_explorer.vim
source $HOME/.config/nvim/general/leaderf.vim


syntax on
set termguicolors

"let g:gruvbox_italic = 1
"let g:gruvbox_contrast_dark = 'soft'
"colorscheme gruvbox
"let g:airline_theme = 'base16_gruvbox_dark_hard'

colorscheme dracula
let g:dracula_italic = 1
let g:dracula_bold = 1
let g:dracula_underline = 1
"let g:airline_powerline_fonts = 1
let g:airline_theme = 'dracula'
let g:rainbow_active = 1
"let g:startify_custom_header = [
"\ '',                      
"\ '   |\ | _  _\  /o._ _  ',
"\ '   | \|(/_(_)\/ || | | ',
"\ '',
"\ ]

" let g:clang_format#code_style = 'webkit'
" let g:clang_format#auto_format = 1
"
"
let g:startify_custom_header = [
\ '   ',
\ '     _   _        __      ___           ',
\ '    | \ | |       \ \    / (_)          ',
\ '    |  \| | ___  __\ \  / / _ _ __ ___  ',
\ '    | . ` |/ _ \/ _ \ \/ / | |  _ ` _ \ ',
\ '    | |\  |  __/ (_) \  /  | | | | | | |',
\ '    |_| \_|\___|\___/ \/   |_|_| |_| |_|',
\ '    ',                                    
\ '    ',                                    
\ ]
let g:autopep8_on_save = 1
let g:autopep8_disable_show_diff = 1
let g:UltiSnipsExpandTrigger = "<tab>"
let g:suda_smart_edit = 1
let g:indentLine_bgcolor_term = 202

let g:mkdp_refresh_slow = 1
let g:gofmt_exe = 'goimports'
let g:pandoc#modules#disabled = ["spell", "folding"]


lua require'colorizer'.setup()


autocmd FileType json syntax match Comment +\/\/.\+$+
autocmd FileType c let g:clang_format#auto_format = 1
autocmd FileType cpp let g:clang_format#auto_format = 1
autocmd FileType java let g:clang_format#auto_format = 1
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType javascriptreact setlocal shiftwidth=2 tabstop=2
autocmd FileType css setlocal shiftwidth=2 tabstop=2
autocmd FileType scss setlocal shiftwidth=2 tabstop=2
autocmd FileType markdown let g:indentLine_setConceal=0 
autocmd FileType markdown set wrap linebreak

autocmd BufWritePost *.js,*.jsx,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.vue,*.yaml,*.html Prettier

highlight Comment cterm=italic gui=italic

command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')

augroup restore_cursor_shape
  autocmd!
  au VimLeave * set guicursor=a:ver10-blinkoff0
augroup END


