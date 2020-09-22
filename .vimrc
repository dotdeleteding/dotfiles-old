call pathogen#infect() "Call effect of nerdtree, syntastic
syntax on
filetype plugin indent on

set number "Show number line in side
set mouse=a "Set mouse active on vim
set tabstop=4 "Tab with 4 space
set softtabstop=4 "Tab with 4 space
set encoding=UTF-8 "Encoding vim
set nocompatible
set undodir=~/.vim/undodir
set undofile


call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree' "Directory or file system explorer on vim
Plug 'preservim/nerdcommenter' "Easy to give comment with using block visual
Plug 'vim-syntastic/syntastic' "Detect error on code
Plug 'sonph/onehalf', {'rtp': 'vim/'} "Theme for vim
Plug 'mg979/vim-visual-multi', {'branch': 'master'} "Block same word in one times, usefull for multiple word with same alphabet
Plug 'frazrepo/vim-rainbow' "Give color on bracket or parents
Plug 'vim-airline/vim-airline' "Add horizontal theme for airline
Plug 'vim-airline/vim-airline-themes' "Theme for airline
Plug 'mileszs/ack.vim' "Find all
Plug 'jiangmiao/auto-pairs' "Auto complete like brackets, parents and quotes
Plug 'junegunn/fzf.vim' "Sometime want looking file or file explore, this can be easy to use for open other file
Plug 'neoclide/coc.nvim', {'branch': 'release'} "Autocomplete for programming
Plug 'ctrlpvim/ctrlp.vim' "File finder for vim
Plug '907th/vim-auto-save' "Autosave feature
Plug 'arcticicestudio/nord-vim' "Theme nord
Plug 'ryanoasis/vim-devicons' "Add icon on vim
call plug#end()


"BEGIN of AutoSave
let g:auto_save = 1
"END of AutoSave

"BEGIN of Shortcut Ctrlp.vim
let g:ctrlp_map='<c-p>'
let g:ctrlp_cmd='CtrlP'
"END of Shortcut Ctrlp.vim

"BEGIN of Shortcut
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
map <Leader>vv :Vifm<CR>
map <Leader>dv :DiffVifm<CR>
map <Leader>sp :SplitVifm<CR>
map <Leader>vp :VsplitVifm<CR>
map <Leader>tv :TabVifm<CR>
map <F1> :PlugInstall<CR> "Install plugin
map <F2> :NERDTreeToggle<CR> "Show file system explorer
map <F3> :fzf<CR> "Easy to open file
"END of Shortcut

"BEGIN of Rainbow
let g:rainbow_active = 1
"END of Rainbow

"BEGIN of Airline theme
let g:airline_theme='minimalist'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" Unicode Symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" Airline Symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
"END of Airline theme

"BEGIN of Theme
set t_Co=256
set cursorline
colorscheme nord
" let g:airline_theme='onehalfdark'
" lightline
" let g:lightline.colorscheme='onehalfdark'
"END of Theme

"BEGIN of running file extension programmer file
map <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
exec "w"
if &filetype == 'c'
exec "!gcc % -o %<"
exec "!time ./%<"
elseif &filetype == 'cpp'
exec "!g++ % -o %<"
exec "!time ./%<"
elseif &filetype == 'java'
exec "!javac %"
exec "!time java -cp %:p:h %:t:r"
elseif &filetype == 'sh'
exec "!time bash %"
elseif &filetype == 'python'
exec "!time python3.8 %"
elseif &filetype == 'html'
exec "!firefox % &"
elseif &filetype == 'go'
exec "!go build %<"
exec "!time go run %"
elseif &filetype == 'mkd'
exec "!~/.vim/markdown.pl % > %.html &"
exec "!firefox %.html &"
endif
endfunc
"END of Running file extension programmer file

"BEGIN of Config for syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"END of Config for syntastic

"BEGIN of coc.vim
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint',
  \ 'coc-prettier', 
  \ 'coc-python',
  \ 'coc-html',
  \ 'coc-css',
  \ 'coc-texlab',
  \ 'coc-xml',
  \ ]

command! -nargs=0 Format :call CocAction('format')
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
"End of coc.vim
