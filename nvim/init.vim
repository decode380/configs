set number
set nocompatible
filetype on
filetype plugin on
filetype indent on
syntax on
set numberwidth=5
set relativenumber
highlight LineNr ctermfg=DarkGrey
set cursorline
set tabstop=2
set shiftwidth=2
set softtabstop=2
set shiftround
set expandtab
set nobackup
set scrolloff=10
set nowrap
set incsearch
set ignorecase
set smartcase
set showcmd
set showmode
set showmatch
set hlsearch
set history=1000
set wildmenu
set encoding=UTF-8
set colorcolumn=120
set hidden

so ~/configs/nvim/plugins.vim
so ~/configs/nvim/mappings.vim
so ~/configs/nvim/coc.vim

let g:gruvbox_contrast_dark = "hard"
colorscheme gruvbox
set background=dark
set laststatus=2

function! IsNERDTreeOpen()
  return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
endfunction

function! SyncTree()
  if &modifiable && IsNERDTreeOpen() && strlen(expand('%')) > 0 && !&diff
    NERDTreeFind
    wincmd p
  endif
endfunction

autocmd BufEnter * call SyncTree()

let g:NERDTreeQuitOnOpen = 1
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }

let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
