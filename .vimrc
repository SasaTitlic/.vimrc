call pathogen#infect()

call plug#begin()
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'SirVer/ultisnips'
call plug#end()

let g:UltiSnipsExpandTrigger="<c-b>"

syntax on
filetype plugin on
filetype indent on


let g:solarized_termcolors=256
set background=light
:colorscheme pablo

set number 
set relativenumber 

set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

set runtimepath^=~/.vim/bundle/ctrlp.vim
set backspace=indent,eol,start

set completeopt-=preview

" vim-go options
let g:go_fmt_command = "goimports"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1

" let NERDTreeQuitOnOpen = 1 
" autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
map <C-o> :NERDTreeToggle %<CR>

" YCM
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_auto_trigger = 1

:map! <c-l> <Right>

function! NumberToggle()
    if(&nu == 1)
        set nu!
        set rnu
    else
        set nornu
        set nu
    endif
endfunction

nnoremap <C-n> :call NumberToggle()<CR>
