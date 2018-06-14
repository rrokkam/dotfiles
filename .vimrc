" Indentation & Tabs
:set autoindent
:set smartindent
:filetype plugin indent on
:set tabstop=4
:set shiftwidth=4
:set expandtab

" Language-specific tab sizes
autocmd FileType python setlocal sw=4 ts=4
autocmd FileType c,cpp setlocal sw=8 ts=8
autocmd FileType java setlocal sw=4 ts=4 

" Remove delay on esc key presses
" Will break any sequences using Esc in insert mode.
" If this functionality is needed, replace with 
"   set timeoutlen=1000 ttimeoutlen=10
:set esckeys
