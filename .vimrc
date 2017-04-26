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
syntax enable
set background=light
colorscheme solarized  

hi Normal     ctermbg=255
hi String      ctermfg=28
hi Function    ctermfg=208
hi Statement     ctermfg=27
hi Boolean     ctermfg=163
hi Comment     ctermfg=39
hi Statement     ctermfg=27
hi Type     ctermfg=18 cterm=bold


set number 
set relativenumber 

set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

set runtimepath^=~/.vim/bundle/ctrlp.vim
set backspace=indent,eol,start

set completeopt-=preview
set hlsearch

noremap <C-c> :CtrlP /home/tsasa/Go/src/<CR>

" vim-go options
let g:go_fmt_command = "goimports"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_snippet_case_type = "camelcase"

" let NERDTreeQuitOnOpen = 1 
" autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
map <C-o> :NERDTreeToggle %<CR>

" YCM
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_auto_trigger = 1

:map! <c-l> <Right>
:map <C-a> :GoDecls<CR>
:map <C-i> :noh<CR>
:nmap <S-Enter> O<Esc>
:nmap <CR> o<Esc>
:map <c-s> :w<CR>

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
