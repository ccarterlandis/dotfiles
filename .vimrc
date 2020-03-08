execute pathogen#infect()

" OPTIONS "

" Baseline
set nocompatible
syntax enable "syntax processing

" Tabbing
set autoindent "autoindent newlines
set tabstop=8 
set softtabstop=0 
set expandtab 
set shiftwidth=4 
set smarttab

" Searching
set incsearch           " search as characters are entered
set hlsearch "search highlighting
set smartcase "automatically switch search to case-sensitive when search query contains an uppercase letter

" Moving
"both of these don't skip fake lines
nnoremap j gj 
nnoremap k gk

" quicker moving on a line
nnoremap B 3b
nnoremap E 3e
nnoremap W 3w

" Leader Commands
let mapleader=" "

nnoremap <Leader>w :bd<CR> " del buffer
nnoremap <Leader>d :bn<CR> " next buffer
nnoremap <Leader>a :bp<CR> " prev buffer
nnoremap <Leader>l <C-w>l " next windows
nnoremap <Leader>h <C-w>h " next windows
nnoremap <Leader>j <C-w>j " next windows
nnoremap <Leader>k <C-w>k " next windows
nnoremap <leader>C :noh<cr> " clear search highlight

nnoremap <Leader>s :w<CR> " next windows

vnoremap <leader>c :w !pbcopy<CR><CR> " copy to system clipboad


" Remapping

" flip around { and } (for Karabiner)
vnoremap $ g_
nnoremap $ g_

" Text Rendering
set linebreak "avoid wrapping a line in the middle of a word
set scrolloff=8 "the number of screen lines to keep above and below the cursor

" UI
set wildmenu "display command line’s tab complete options as a menu
set number
set relativenumber
set noerrorbells
set visualbell
set showcmd "show command in bottom bar
set cursorline "draws horizontal highlight under line w/ cursor
set showmatch "when your cursor moves over a parenthesis-like character, the matching one will be highlighted as well
set guifont="Inconsolata"

" Misc
set autoread "automatically re-read files if unmodified inside Vim
set wildignore+=.pyc,.swp
set wildignorecase
set hidden
set noswapfile

" Infinite Undo
set undofile
set undodir=~/.vim/undodir

" Status Line
if has('statusline')
      set laststatus=2

      " Broken down into easily includeable segments
      set statusline=B:%n\                         " Options
      set statusline+=%<%f\                     " Filename
      set statusline+=%w%h%m%r                 " Options
      set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info
  endif

colorscheme onedark
set t_Co=256
set guioptions-=m " Removes top menubar
set guioptions-=T " Removes top toolbar
set guioptions-=r " Removes right hand scroll bar
set go-=L " Removes left hand scroll bar

" Reload .vimrc
" PLUGIN STUFF
" NERDTree
nmap <leader>n :NERDTreeToggle<cr>
nnoremap <Leader>m :NERDTreeFocus<CR> " show nerdtree
nnoremap <Leader>vc :e ~/.vimrc<CR> " show nerdtree

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

let g:airline_section_c = "B:%n"
let g:airline_section_x = ""
let g:airline_section_y = ""
let g:airline_section_error = ""
let g:airline_section_warning = ""

" SimplyIFold
let g:SimpylFold_docstring_preview = 1
let g:SimpylFold_fold_docstring	= 1
let g:SimpylFold_fold_import = 1
