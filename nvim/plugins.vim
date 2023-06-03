call plug#begin('~/configs/nvim/plugged')
  Plug 'preservim/nerdtree'
  Plug 'morhetz/gruvbox'
  Plug 'itchyny/lightline.vim'

  " Bracket
  Plug 'docunext/closetag.vim'
  Plug 'jiangmiao/auto-pairs'
  Plug 'tpope/vim-surround'

  Plug 'neoclide/coc.nvim', {'branch': 'release'}

  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'ryanoasis/vim-devicons'
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

  Plug 'preservim/nerdcommenter'
  "Plug 'kien/ctrlp.vim'
  Plug 'airblade/vim-gitgutter'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
call plug#end()

" Ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"
