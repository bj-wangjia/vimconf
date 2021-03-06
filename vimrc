let g:user_name = 'wangjia'
let g:user_email = 'wangjia@mitegral.com'

set nocompatible
set encoding=utf8
set fileencoding=utf-8
set fileencodings=utf-8,gbk

set nu

"搜索高亮
""set highlight
"
""vim不清屏
set t_ti= t_te=
set t_Co=256

set sw=4
set ts=4
set shiftround
set expandtab
set et

set hlsearch
set autoindent
set noignorecase

set showmode               " Show current mode in command-line.
set showcmd                " Show already typed keys when more are expected.

"sp 右边显示
set spr

""下面一条语句时代码折叠
set fdm=indent
syntax on
filetype plugin indent on

set tags+=./tags
set tags+=../tags

" Pathogen
 execute pathogen#infect()

" ctrlP
nnoremap <Leader>fu :CtrlPFunky<Cr>

" Plugin rainbow
let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle
"let g:rainbow_conf = {
"\   'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
"\   'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
"\   'operators': '_,_',
"\   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
"\   'separately': {
"\       '*': {},
"\       'tex': {
"\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
"\       },
"\       'lisp': {
"\           'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
"\       },
"\       'vim': {
"\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
"\       },
"\       'html': {
"\           'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
"\       },
"\       'css': 0,
"\   }
"\}

" AirLine
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_theme='simple'

" tagbar
autocmd VimEnter *.h  nested TagbarOpen
autocmd VimEnter *.cpp  nested TagbarOpen
autocmd VimEnter *.c  nested TagbarOpen
let tagbar_left=1
let tagbar_width=25

" color molokai
colorscheme molokai
let g:molokai_original = 1
let g:rehash256 = 1
