call plug#begin('~/.config/nvim/plugged')

function! DoRemote(arg)
	UpdateRemotePlugins
endfunction

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'
Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }
Plug 'bling/vim-airline'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'kien/ctrlp.vim'
Plug 'tomasr/molokai'

call plug#end()


let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

let g:deoplete#enable_at_startup = 1

set relativenumber
set number
set tabstop=2
set softtabstop=0 noexpandtab
set shiftwidth=2
set backspace=2

" Buffer shortcuts! 
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

set mouse=a

set cursorline
colorscheme monokai

" deoplete tab-complete
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
" tern
autocmd FileType javascript nnoremap <silent> <buffer> gb :TernDef<CR>
