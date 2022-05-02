" vim.plug plugins

call plug#begin()
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/ryanoasis/vim-devicons'
Plug 'https://github.com/sainnhe/sonokai'
Plug 'https://github.com/preservim/nerdtree'
call plug#end()

" neovim options

syntax on
set incsearch
set ignorecase
set smartcase
set hidden
set cmdheight=2
set nobackup
set nowritebackup
set autoread
set mouse=a
set rnu
set encoding=UTF-8
set so=999
set signcolumn=yes
set cursorline
set cursorlineopt=number
set clipboard=unnamedplus

" Remap

nmap <C-a> :NERDTreeToggle<CR>

" Shortcuts for split navigation

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

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

