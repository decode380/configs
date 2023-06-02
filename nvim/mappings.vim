
let mapleader = " "
nnoremap <space> <nop>
inoremap ii  <Esc>

nnoremap <leader>n :noh<CR>
nnoremap <leader>s :source ~/configs/init.vim<CR>

nnoremap <leader><space> :
nnoremap <leader>w :w<cr>
nnoremap <leader>q :q<cr>

nnoremap o o<esc>
nnoremap O O<esc>

nnoremap n nzz
nnoremap N Nzz

nnoremap <leader>\ ``

" Windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

noremap <c-up> <c-w>+
noremap <c-down> <c-w>-
noremap <c-left> <c-w><
noremap <c-right> <c-w>>

nnoremap <F3> :NERDTreeToggle<cr>

" Buffers
noremap <leader>1 :bp<cr>
noremap <leader>2 :bp<cr>
noremap <leader>0 :bd<cr>
nnoremap <leader>9 :bd!<cr> 

" Terminal
nnoremap <c-t> :tab ter<cr>
tnoremap <c-t> <c-\><c-n>


