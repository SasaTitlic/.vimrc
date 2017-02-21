call pathogen#infect()

call plug#begin()
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
call plug#end()

set number 
set tabstop=4       
set shiftwidth=4   
set softtabstop=4 
set expandtab 
set smartindent
set runtimepath^=~/.vim/bundle/ctrlp.vim
set backspace=indent,eol,start

set completeopt-=preview

" vim-go options
let g:go_fmt_command = "goimports"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1

let NERDTreeQuitOnOpen = 1 
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
map <C-o> :NERDTreeToggle %<CR>


" YCM
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_auto_trigger = 1

:map! <c-l> <Right>
