set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Valloric/ListToggle'
Plugin 'CoatiSoftware/vim-sourcetrail'

Plugin 'octol/vim-cpp-enhanced-highlight'
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1

Plugin 'bling/vim-airline'
Plugin 'vim-scripts/Conque-GDB'

Plugin 'haya14busa/incsearch.vim'
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

autocmd vimenter * NERDTree
autocmd VimEnter * wincmd p

vmap <C-C> gc

set number
set shiftwidth=2

call vundle#end()            " required
filetype plugin indent on    " required
execute pathogen#infect()
syntax on
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

set tabstop=2

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

autocmd FileType cpp setlocal commentstring=//\ %s


"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_cpp_checkers = [' g++']
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

let g:ycm_key_list_select_completion = ['<TAB>']
let g:ycm_key_list_previous_completion = ['<S-TAB>']
let g:ycm_key_invoke_completion = '<C-Space>'
let g:ycm_key_list_stop_completion = [ '<Up>' , '<Down>']
let g:ycm_max_num_candidates = 35
let g:ycm_filetype_whitelist = {'cpp': 1}
"let g:ycm_error_symbol = '!!'
"let g:ycm_autoclose_preview_window_after_completion = '1'
"let g:ycm_enable_diagnostic_highlighting = 0
nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>
nnoremap <F2> :w <bar> exec '!astyle '.shellescape('%')<CR>
" CTRL-C and CTRL-Insert are Copy
vnoremap <C-Y> "+y
vnoremap <c-insert> "+y

" CTRL-V and SHIFT-Insert are Paste
"map <C-V> "+gP
map <S-Insert> "+gP

set nowrap
