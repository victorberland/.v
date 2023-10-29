""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" V
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin()
Plug 'posva/vim-vue'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'Townk/vim-autoclose'
Plug 'tomtom/tcomment_vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'editorconfig/editorconfig-vim'
Plug 'AndrewRadev/tagalong.vim'
Plug 'mattn/emmet-vim'
Plug 'skwp/greplace.vim'
Plug 'github/copilot.vim'
Plug 'rose-pine/neovim'
Plug 'skywind3000/asyncrun.vim'
Plug 'voldikss/vim-floaterm'
Plug 'tpope/vim-fugitive'
" Plug 'sbdchd/neoformat'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install --frozen-lockfile --production',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html', 'php'] }
"Plug 'Yggdroot/indentLine'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
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
set expandtab
"set autoindent
set showmatch
set backspace=indent,eol,start
set tabpagemax=100

set guicursor=n-v-c-i:block

let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 1
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=235
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=234

set encoding=utf-8
set fileencoding=utf-8

let html_no_rendering=1


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on
set termguicolors
set background=dark

function! s:tweak_colors()
	" highlight Normal guibg=black
	" highlight nonText guibg=black
	autocmd ColorScheme * highlight Normal guibg=NONE
endfunction

" run tweak_colors() on neovim startup
try
	call s:tweak_colors()
catch
endtry

autocmd! ColorScheme rose-pine call s:tweak_colors()
colorscheme rose-pine

hi StatusLine ctermbg=0
hi TabLineFill ctermfg=0
hi TabLine ctermfg=240 ctermbg=0
" hi TabLineSel ctermbg=0
" hi Title ctermbg=0

set nohlsearch


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader="\<Space>"
nnoremap <S-Tab> gT
nnoremap <Tab> gt
nnoremap <F4> :Texplore<cr>
nnoremap <F3> :Goyo<cr>
map , :Files<CR>
map ; :Rg<CR>



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufWritePre * %s/\s\+$//e






""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set signcolumn=no
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
" inoremap <silent><expr> <TAB>
"       \ pumvisible() ? "\<C-n>" :
"       \ <SID>check_back_space() ? "\<TAB>" :
"       \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
" if has('nvim')
"   inoremap <silent><expr> <c-space> coc#refresh()
" else
"   inoremap <silent><expr> <c-@> coc#refresh()
" endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
" inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
"                               \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:prettier#config#print_width = 180
" let g:prettier#config#single_quote = 'true'
let g:prettier#config#tab_width = 2
" let g:prettier#config#use_tabs = 'false'
let g:prettier#config#single_quote = 'true'
