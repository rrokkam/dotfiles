" Indentation & Tabs
:set autoindent
:set smartindent
:filetype plugin indent on
:set tabstop=4
:set shiftwidth=4
:set textwidth=80
":set expandtab

" Language-specific tab sizes
autocmd FileType python setlocal sw=4 ts=4
autocmd FileType c,cpp setlocal sw=8 ts=8
autocmd FileType java setlocal sw=4 ts=4 

" Remove delay on esc key presses
" Will break any sequences using Esc in insert mode.
" If this functionality is needed, replace with 
"   set timeoutlen=1000 ttimeoutlen=10
:set esckeys

" Automatic word wrapping
:set tw=79

" Get rid of the bad arrow key behavior when using insert mode
:set nocompatible
:set t_ku=[A
:set t_kd=[B
:set t_kr=[C
:set t_kl=[D

:set term=ansi

" Backspace over line breaks, indentation, etc
:set backspace=2

" For screen-256color, make sure vim uses an alternate screen
:set t_ti=7[r[?47h t_te=[?47l8

" Parenthesis matching
:let loaded_matchparen = 1
