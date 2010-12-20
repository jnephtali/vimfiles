filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" register bundles found in the runtimepath
let s:bundles = tr(globpath(&runtimepath, 'bundle/*/.'), "\n", ',')
let s:afters = tr(globpath(s:bundles, 'after/.'), "\n", ',')
let &runtimepath = join([s:bundles, &runtimepath, s:afters], ',')


set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '\"' . arg1 . '\"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '\"' . arg2 . '\"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '\"' . arg3 . '\"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '\"' . $VIMRUNTIME . '\diff\"'
      let eq = '\"\"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '\" ', '') . '\diff\"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction

" ADDED BY ME
filetype plugin indent on

" Pydictionary plugin
"filetype plugin on
let g:pydiction_location = 'C:/Program Files/Vim/vimfiles/ftplugin/pydiction/complete-dict'
let g:pydiction_menu_height = 20


set modelines=0

set tabstop=2
set shiftwidth=2
set softtabstop=2
set showtabline=2
set expandtab

set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
"set undofile

let mapleader = ","

nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader>space> :noh<cr>
nnoremap <tab> %
vnoremap tab> %

set wrap
set textwidth=79
set formatoptions=qrn1
nmap<leader>ccon :set colorcolumn=85<CR>
nmap<leader>ccoff :set colorcolumn=0<CR>

" Use spaces instead of tabs
"set smarttab

" Colors and fonts
"colorscheme inkpot
"set background=dark 
"colorscheme ir_black
colorscheme ir_black_JN
"colorscheme railscasts
"syntax on
"set guioptions=em
set guifont=Consolas:h11:cANSI

" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>

nmap <leader>b :BufExplorer<CR>

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:?\ ,eol:¬

"nnoremap <up> <nop>
"nnoremap <down> <nop>
"nnoremap <left> <nop>
"nnoremap <right> <nop>
"inoremap <up> <nop>
"inoremap <down> <nop>
"inoremap <left> <nop>
"inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

nnoremap ; :

nnoremap <leader>w <C-w>v<C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

set pastetoggle=<F2>

" Use Q for formatting the current paragraph (or selection)
vmap Q gq
nmap Q gqap

" swp files are saved to %Temp% folder
set backupdir=$temp
set directory=$temp
" sets the default size of gvim on open
"set lines=999 columns=999/
" Maximize Vim
au GUIEnter * simalt ~x
" Set windows position on right screen
exec ':winpos 1672 -8'

" This is totally awesome - remap jj to escape in insert mode.  You'll never type jj anyway, so it's great!
inoremap jj <Esc>

nnoremap JJJJ <Nop>

" Indenting selected lines
:vnoremap <Tab> >
:vnoremap <S-Tab> <
:vnoremap > >gv
:vnoremap < <gv

" NERDTree plugin toggle
map <F2> :NERDTreeToggle<CR>

" Map F5 to refresh/restore
map <F5> :e!<CR>



"Vertical split 
:noremap <leader>v :vsp<cr>
:noremap <leader>h :split<cr>
"Make current window the only one
:noremap <leader>O :only<cr>:tabo<cr>
:noremap <leader>o :only<cr>

"Buffer next,previous (ctrl-{n,p})
:noremap <C-N> :bn<cr>
:noremap <C-P> :bp<cr>

"Paraxip Log Search
"next SIP message
:noremap <C-j> /\vSIP (MESSAGE\|RE)<cr>
"previous SIP message
:noremap <C-k> ?\vSIP (MESSAGE\|RE)<cr>

