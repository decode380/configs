
let mapleader = " "
nnoremap <space> <nop>
inoremap ii  <Esc>

nnoremap <leader>n :noh<CR>
nnoremap <leader>s :source ~/configs/nvim/init.vim<CR>

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

noremap <c-up> 10<c-w>+
noremap <c-down> 10<c-w>-
noremap <c-left> 10<c-w><
noremap <c-right> 10<c-w>>

function MyNerdToggle()
    if &filetype == 'nerdtree'
        :NERDTreeToggle
    else
        :NERDTreeFind
    endif
endfunction

nnoremap <F3> :NERDTreeToggle<cr>
nnoremap <c-n> :call MyNerdToggle()<cr>

vmap <leader>/ <plug>NERDCommenterToggle
nmap <leader>/ <plug>NERDCommenterToggle

" Buffers
noremap <leader>1 :bp<cr>
noremap <leader>2 :bp<cr>  
noremap <leader>0 :bd<cr>
nnoremap <leader>9 :bd!<cr> 


nnoremap <silent> <leader>p :Files<cr>
nnoremap <silent> <leader>f :Rg<cr>

inoremap <A-l> <right>


