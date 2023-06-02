call plug#begin('~/configs/nvim/plugged')
  Plug 'preservim/nerdtree'
  Plug 'morhetz/gruvbox'
  Plug 'itchyny/lightline.vim'

  " Bracket
  Plug 'docunext/closetag.vim'
  Plug 'jiangmiao/auto-pairs'
  Plug 'tpope/vim-surround'


  Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" Ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"

let g:deoplete#enable_at_startup = 1
