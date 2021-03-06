" vim.plug plugins

call plug#begin()
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/ryanoasis/vim-devicons'
Plug 'https://github.com/sainnhe/sonokai'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/junegunn/goyo.vim'
Plug 'https://github.com/junegunn/limelight.vim'
call plug#end()

" neovim options

syntax on
set incsearch
set ignorecase
set smartcase
set hidden
set nobackup
set nowritebackup
set autoread
set mouse=a
set nu rnu
set encoding=UTF-8
set so=999
set signcolumn=yes
set cursorline 
set culopt=number,screenline
set clipboard=unnamedplus

" Remap

nmap <C-a> :NERDTreeToggle<CR>

" Shortcuts for split navigation

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Natural navigation

nnoremap j gj
nnoremap k gk

" map left/right arrow keys to indendation

nmap <Left> <<
nmap <Right> >>
vmap <Left> <gv
vmap <Right> >gv

" Themes

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

let g:sonokai_style = 'shusia'
colorscheme sonokai

" AirLine

let g:airline_theme = 'sonokai'
let g:aitline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
