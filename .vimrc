"enable mouse
if !has('nvim')
  if has("mouse_sgr")
    set ttymouse=sgr
    set mouse=a
  else
    set ttymouse=xterm2
    set mouse=a
  end
endif
set clipboard=unnamedplus
set splitkeep=screen
" Recently vim can merge signcolumn and number column into one
if has("nvim-0.5.0") || has("patch-8.1.1564")
  set signcolumn=number
else
  set signcolumn=yes
endif
"add comment on new line ??????
set formatoptions=tcroql
"special
" set dictionary+=/home/john/.vim/dict.txt
set nocompatible
set ttimeoutlen=50
" set iskeyword+=-
" set iskeyword+=(
" set iskeyword+=)
" set iskeyword+={
" set complete=k**/*
augroup CursorLine
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  au WinLeave * setlocal nocursorline
augroup END

"interface
set number
set splitright
set cursorline
set nowrap
set wildmenu
set ignorecase
set equalalways
set winminheight=0
set winminwidth=0
set laststatus=2
set completeopt=longest,menuone
set backspace=indent,eol,start
set colorcolumn=80
set incsearch

let &colorcolumn=join(range(81,999),",")
"tabs
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set smarttab
set autoindent
set breakindent

"persistent undo and backups
set undofile

if !has('nvim')
  set undodir=~/.vim/undodir
else 
  set undodir=~/.vim/undodirNeoVim
endif

set backupdir=~/.vim/backup
set directory=~/.vim/swp

"improve performance over SSH
set lazyredraw
set ttyfast

filetype plugin indent on
syntax on

" global mappings
" map <C-q> :b#<bar>bd#<CR>
nnoremap k gk
nnoremap K 5k
nnoremap j gj
nnoremap J 5j
" nnoremap p :pu<enter>
nmap <C-=> ggvG=<C-o><C-o> 
" nmap a :call IndentWithI()<enter>
nmap <C-d> <esc>:qa<enter>
nmap ; :w<enter>
nmap <space> :
nmap <Tab> <C-w>w
nmap <S-Tab> <C-w>W
nmap \| :TagbarToggle<enter>
nmap <leader>u :UndotreeToggle<enter>
nmap \\ :NERDTreeToggle<enter>
nmap # yiwa `json:"<esc>pb~ww
nmap Q yiwwpbi id="<esc>xwwP
nmap ! 0yiwa <esc>p0i<<esc>wwiclass="<esc>xwwhi"<esc>xli></<esc>lxa>
nmap <s-f2> :term<enter>
" nmap H :g/^$/d<enter>gg=G<c-o>zz:w<enter>
nmap H gg=G<c-o>zz:w<enter>
nmap <d _i<div class="" ><esc>a</div><esc
nmap q :grep .<cword> %:p:r.css<enter><enter>

set autowrite
"
"plugins
call plug#begin('~/.vim/plugged')

" Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'majutsushi/tagbar'
Plug 'mbbill/undotree'
Plug 'dense-analysis/ale'
Plug 'jiangmiao/auto-pairs'

Plug 'nanozuki/tabby.nvim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'turbio/bracey.vim', {'do': 'npm install --prefix server'}
Plug 'uga-rosa/ccc.nvim'
Plug 'tpope/vim-commentary'
" Plug 'rafi/awesome-vim-colorschemes'
" Plug 'ziontee113/color-picker.nvim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
" Plug 'christoomey/vim-tmux-navigator'

Plug 'carlosrocha/chrome-remote.nvim'
" Plug 'othree/html5.vim'
Plug 'sheerun/vim-polyglot'

Plug 'fatih/vim-go'
Plug 'rust-lang/rust.vim'

" Android
Plug 'thosakwe/vim-flutter'
Plug 'dart-lang/dart-vim-plugin'
Plug 'udalov/kotlin-vim'

" Javascript
Plug 'jelera/vim-javascript-syntax'
Plug '1995eaton/vim-better-javascript-completion'
" Plug 'ramitos/jsctags'
" Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
" Plug 'maksimr/vim-jsbeautify'

" Themes
Plug 'morhetz/gruvbox'
Plug 'sainnhe/everforest'
" Plug 'altercation/vim-colors-solarized'
Plug 'sainnhe/gruvbox-material'
Plug 'nvim-focus/focus.nvim'
Plug 'rebelot/kanagawa.nvim'
Plug 'stevearc/vim-arduino'

" window auto-resize/animations
" Plug 'camspiers/animate.vim'
" Plug 'camspiers/lens.vim'


" Plug 'natebosch/vim-lsc'
" Plug 'natebosch/vim-lsc-dart'
" let g:lsc_auto_map = v:true
" let g:lsc_dart_sdk_path = '~/snap/flutter/common/flutter/bin/cache/dart-sdk'
" let g:lsc_server_commands = {'dart': 'dart_language_server'}

" Plug 'francoiscabrol/ranger.vim'
" Plug 'jistr/vim-nerdtree-tabs'
" Plug 'rafi/vim-tinyline'
"
" Plug 'ervandew/supertab'
" Plug 'Shougo/echodoc.vim'
" Plug 'SirVer/ultisnips'

" Plug 'vim-scripts/c.vim'
" Plug 'Rip-Rip/clang_complete'

" Plug 'alvan/vim-closetag'
" Plug 'ap/vim-css-color'
" Plug 'posva/vim-vue'
" Plug 'tomlion/vim-solidity'
call plug#end()

" Rust
let g:rustfmt_autosave = 1
let g:rustfmt_emit_files = 1
let g:rustfmt_fail_silently = 0

" GO
let g:go_highlight_operators = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_array_whitespace_error = 1
let g:go_highlight_chan_whitespace_error = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_space_tab_error = 1
let g:go_highlight_trailing_whitespace_error = 1
let g:go_list_type = "quickfix"
let g:go_fmt_command = "goimports"
let g:go_term_enabled = 1
" au FileType go setlocal tabstop=8
au FileType go nmap <enter> :GoDoc<enter>
au FileType go nmap \<enter> <Plug>(go-def-vertical)
autocmd FileType go setlocal shiftwidth=8 tabstop=8 expandtab
ab iff if err != nil {<enter>log.Println(err)<esc>jo
ab logg log.Println("")<esc>hi
ab rrr for _, _ := range 
ab fff fmt.Println()<esc>i

" NERDTree
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeWinSize=16

" COC
set updatetime=300
set shortmess+=c
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ pumvisible() ? "\<C-n>" :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"



let g:vimjs#casesensistive = 0
" Enabled by default. flip the value to make completion matches case insensitive

let g:vimjs#smartcomplete = 1
" Disabled by default. Enabling this will let vim complete matches at any location
" e.g. typing 'ocument' will suggest 'document' if enabled.

let g:vimjs#chromeapis = 1
" Disabled by default. Toggling this will enable completion for a number of Chrome's JavaScript extension APIs
"
autocmd vimenter * ++nested colorscheme everforest
set termguicolors
set background=light
let g:everforest_background = 'medium'

" hi SpellBad guibg=lightred guifg=white
" hi Normal guibg=#FFF9d5
" autocmd VimEnter * call timer_start(200, { tid -> execute('hi LineNr guibg=#d2802e guifg=lightyellow')})
au InsertEnter * hi statusLineNC guifg=#c2a774 guibg=#fff4ce
au InsertEnter * hi StatusLine term=reverse guibg=#faefeb
au InsertLeave * hi StatusLine term=reverse guibg=#e6e48c guifg=#7a7802
" au InsertLeave * hi LineNr guibg=#d2802e guifg=lightyellow
" au InsertEnter * hi LineNr guibg=#f1c800 guifg=#74593d

" hi colorcolumn guibg=#f9f6da
au BufReadPost *.tmpl set filetype=html.tmpl

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
      \ if line("'\"") > 0 && line("'\"") <= line("$") |
      \   exe "normal! g`\"" |
      \ endif



" let g:tmux_navigator_no_mappings = 1
" noremap <silent> {Left-Mapp :<C-U>TmuxNavigateLeft<cr>
" noremap <silent> {Down-Mapping} :<C-U>TmuxNavigateDown<cr>
" noremap <silent> {Up-Mapping} :<C-U>TmuxNavigateUp<cr>
" noremap <silent> {Right-Mapping} :<C-U>TmuxNavigateRight<cr>
" noremap <silent> <Tab> :<C-U>TmuxNavigatePrevious<cr>
" after installing vim on a new system:
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" :GoInstallBinaries
" :CocInstall coc-sh coc-css coc-flutter coc-go coc-html coc-tsserver coc-json coc-solidity
" adjust quickfix window
" autocmd FileType qf wincmd J
"smart indent when entering insert mode with i on empty lines
function! IndentWithI()
  if len(getline('.')) == 0
    return "S"
  else
    return "A"
  endif
endfunction
noremap <expr> a IndentWithI()


" au FileType html,css,tmpl,js nmap ; gg=G'':w<enter>
function! SynGroup()
    let l:s = synID(line('.'), col('.'), 1)
    echo synIDattr(l:s, 'name') . ' -> ' . synIDattr(synIDtrans(l:s), 'name')
endfun
