""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" V
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin()
Plug 'posva/vim-vue'
Plug 'junegunn/goyo.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Townk/vim-autoclose'
Plug 'tomtom/tcomment_vim'
Plug 'nathanaelkane/vim-indent-guides'
"Plug 'Yggdroot/indentLine'
call plug#end()


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set noswapfile
filetype plugin on

inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set lbr
set number
set ruler


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype plugin indent on
set tabstop=2
set shiftwidth=2
"set autoindent
set showmatch
set backspace=indent,eol,start

let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=235
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=234

set encoding=utf-8
set fileencoding=utf-8

let html_no_rendering=1


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on
colo pablo
set background=dark
colorscheme zellner


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader="\<Space>"
nnoremap <S-Tab> gT
nnoremap <Tab> gt
nnoremap <F4> :Texplore<cr>
nnoremap <F3> :Goyo<cr>

let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<c-t>'],
    \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
    \ }