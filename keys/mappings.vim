" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

" Easy CAPS
inoremap <c-u> <ESC>viwUi
nnoremap <c-u> viwU<Esc>

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

" Alternate way to save
nnoremap <C-s> :w<CR>
" Alternate way to quit
nnoremap <C-Q> :q!<CR>
" Use control-c instead of escape
nnoremap <C-c> <Esc>
" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l


nnoremap <Leader>o o<Esc>^Da
nnoremap <Leader>O O<Esc>^Da

nnoremap <C-n> :tabedit<CR>
noremap <Leader>n :tabn<CR>
noremap <Leader>p :tabp<CR>
noremap <Leader>e :edit<CR>
noremap <Leader>q :qa!<CR>
noremap <Leader>g :Goyo<CR>
noremap <Leader>e :CocCommand explorer<CR>

nnoremap <C-_> :call NERDComment(0,"toggle")<CR>
vnoremap <C-_> :call NERDComment(0,"toggle")<CR>

noremap <C-p> :MarkdownPreview<CR>

vnoremap <Space> zf
