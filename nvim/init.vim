" vim.plug plugins

call plug#begin()
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/ryanoasis/vim-devicons'
Plug 'https://github.com/sainnhe/sonokai'
call plug#end()

" neovim options

set number
set encoding=UTF-8
set so=999
set signcolumn=yes
set cursorline
set cursorlineopt=number

" Themes

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

colorscheme sonokai

