set nocompatible
set number
set relativenumber
syntax on
set path+=./**                                                                    
" set wildignore+=**/node_modules/**
" set path+=ClientApp/**,Areas/**,Controllers/**
set wildmenu
set noshowmode
set hidden

nnoremap ,ts o<C-r>%<Esc>cawts<Esc>dd3u:vert sf <C-r>"<CR>
nnoremap ,vue o<C-r>%<Esc>cawvue<Esc>dd3u:vert sf <C-r>"<CR>

nnoremap ,e :CocDiagnostics<CR>
nnoremap ,n :CocDiagnostics<CR><CR><C-w>w:q<CR>

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'junegunn/seoul256.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'andymass/vim-matchup'
Plug 'itchyny/lightline.vim'
Plug 'jeetsukumaran/vim-buffergator'
" Plug 'posva/vim-vue'
" Plug 'preservim/nerdtree'
" Plug 'OmniSharp/omnisharp-vim'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

let g:seoul256_background = 235
colo seoul256

" Lightline
let g:lightline = {
      \ 'colorscheme': 'seoul256',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'username', 'cocstatus', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component': {
      \   'username': $USER,
      \ },
      \ 'component_function': {
      \   'filename': 'LightlineFilename',
      \   'cocstatus': 'coc#status',
      \ },
      \ }

function! LightlineFilename()
  return expand('%:t') !=# '' ? @% : '[No Name]'
endfunction

" Use auocmd to force lightline update.
autocmd User CocStatusChange,CocDiagnosticChange call lightline#update()" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
    endfunction

    inoremap <silent><expr> <Tab>
          \ pumvisible() ? "\<C-n>" :
                \ <SID>check_back_space() ? "\<Tab>" :
                      \ coc#refresh()

" navigate suggestion list with tab and shift + tab
noremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" accept seggestion on enter
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" auto format on enter
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Automatically open NerdTree
" autocmd vimenter * NERDTree

