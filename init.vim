set number
set relativenumber
syntax off
set hidden
set noswapfile
set path=$PWD/**
set wildignore+=**/node_modules/**
let mapleader=","
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab
set foldmethod=syntax   
set foldnestmax=1
set nofoldenable
set foldlevel=1

call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'pbrisbin/vim-colors-off'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'sheerun/vim-polyglot'
Plug 'rust-lang/rust.vim'
Plug 'Jorengarenar/vim-darkness'
Plug 'alvan/vim-closetag'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

call plug#end()

colorscheme off

" dict
" Disables auto-close if not in a "valid" region (based on filetype)
"
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ 'typescriptreact': 'jsxRegion,tsxRegion',
    \ 'javascriptreact': 'jsxRegion',
    \ }

let g:netrw_liststyle = 3

" Close all buffers except the current one
noremap <leader>d :%bd\|e#\|bd#<cr>\|'"

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `,k` and `,j` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> <leader>k <Plug>(coc-diagnostic-prev)
nmap <silent> <leader>j <Plug>(coc-diagnostic-next)

nmap <silent> <leader>N :cp<CR>
nmap <silent> <leader>n :cn<CR>

nmap <silent> <leader>p :Prettier<CR>
autocmd FileType rust nmap<buffer> <leader>p :RustFmt<CR>
:nnoremap <leader>s :sp<cr>
:nnoremap <leader>v :vert sp<cr>
:nnoremap <leader>l :silent Ve<CR>
:nnoremap <leader>e :silent E<CR>

function! s:CloseNetrw() abort
  for bufn in range(1, bufnr('$'))
    if bufexists(bufn) && getbufvar(bufn, '&filetype') ==# 'netrw'
      silent! execute 'bwipeout ' . bufn
      if getline(2) =~# '^" Netrw '
        silent! bwipeout
      endif
      return
    endif
  endfor
endfunction

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Symbol renaming.
nmap <leader>r <Plug>(coc-rename)

" Prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" Remap <C-f> and <C-b> for scroll float windows/popups.
" if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
" endif

" Command mode remappings
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>
cnoremap <C-b> <Left>
cnoremap <C-f> <Right>
cnoremap <M-b> <S-Left>
cnoremap <M-f> <S-Right>

" Add (Neo)Vim's native statusline support.
set statusline=%f\ %h%w%m%r\ %=\ %{coc#status()}\ \ %{get(b:,'coc_current_function','')}\ %l\ %c\ %P

function Sunshine(timer)
  if filereadable("/home/thesdev/.abend")
    colorscheme darkness
  else
    colorscheme off
    set background=light
  endif
endfunction


function! AutoDarkModeSetup()
  let timer = timer_start(10000, 'Sunshine', {'repeat': -1})
  call Sunshine(timer) " Initial call to setup the theme
endfunction

call AutoDarkModeSetup()
