set nocompatible	" Use Vim defaults (much better!)

"==========================================
" 定义常用的变量
"==========================================
let g:author = "wangjia"
let g:email = "89946525@qq.com"

if v:lang =~ "utf8$" || v:lang =~ "UTF-8$"
   set fileencodings=ucs-bom,utf-8,latin1
endif

set bs=indent,eol,start		" allow backspacing over everything in insert mode
"set backup		" keep a backup file
set viminfo='20,\"50	" read/write a .viminfo file, don't store more
			" than 50 lines of registers
set history=10000		" keep 50 lines of command line history

" Only do this part when compiled with support for autocommands
if has("autocmd")
  augroup redhat
  autocmd!
  " In text files, always limit the width of text to 78 characters
  autocmd BufRead *.txt set tw=78
  " When editing a file, always jump to the last cursor position
  autocmd BufReadPost *
  \ if line("'\"") > 0 && line ("'\"") <= line("$") |
  \   exe "normal! g'\"" |
  \ endif
  " don't write swapfile on most commonly used directories for NFS mounts or USB sticks
  autocmd BufNewFile,BufReadPre /media/*,/mnt/* set directory=~/tmp,/var/tmp,/tmp
  " start with spec file template
  autocmd BufNewFile *.spec 0r /usr/share/vim/vimfiles/template.spec
  augroup END
endif

if has("cscope") && filereadable("/usr/bin/cscope")
   set csprg=/usr/bin/cscope
   set csto=0
   set cst
   set nocsverb
   " add any database in current directory
   if filereadable("cscope.out")
      cs add cscope.out
   " else add database pointed to by environment
   elseif $CSCOPE_DB != ""
      cs add $CSCOPE_DB
   endif
   set csverb
endif

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

if &term=="xterm"
     set t_Co=8
     set t_Sb=[4%dm
     set t_Sf=[3%dm
endif

" Don't wake up system with blinking cursor:
" http://www.linuxpowertop.org/known.php
let &guicursor = &guicursor . ",a:blinkon0"


" install Vundle bundles
if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

"==========================================
" 与文件类型相关的设置
"==========================================
"检测文件类型
filetype on
"针对不同的文件类型采用不同的缩进格式
filetype indent on
"允许插件
filetype plugin on
"启动自动补全
filetype plugin indent on


"==========================================
" Display Settings 展示/排版等界面格式设置
"==========================================
"
" 在上下移动光标时，光标的上方或下方至少会保留显示的行数
set scrolloff=7
" 括号配对情况,跳转并高亮一下匹配的括号
set showmatch
set ruler		" show the cursor position all the time
set nu
set ai
set cin
set expandtab
set ts=4
set sw=4
set sts=4
set tw=100
set nobk

"==========================================
" FileEncode Settings 文件编码,格式
"==========================================
" 设置新文件的编码为 UTF-8
set encoding=utf-8
" 自动判断编码时，依次尝试以下编码：
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set helplang=cn
"set langmenu=zh_CN.UTF-8
"set enc=2byte-gb18030
" 下面这句只影响普通模式 (非图形界面) 下的 Vim。
set termencoding=utf-8

"==========================================
" others 其它设置
"==========================================
autocmd! bufwritepost _vimrc source % " vimrc文件修改之后自动加载。 windows。
autocmd! bufwritepost .vimrc source % " vimrc文件修改之后自动加载。 linux。

" 自动补全配置
"让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
set completeopt=longest,menu

" 增强模式中的命令行自动完成操作
set wildmenu
" Ignore compiled files
set wildignore=*.o,*~,*.pyc,*.class

"Smart way to move between windows 分屏窗口移动
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"============================================
" 新建文件标题
"============================================
autocmd BufNewFile *.cpp,*.[ch],*.sh,*.py,*.sql,*php exec ":call SetTitle()"

func SetTitle()
    if &filetype == 'sh'
        source ~/.vim/title/sh.vim
    elseif (&filetype == 'cpp') 
        source ~/.vim/title/c.vim
    elseif (&filetype == 'python')
        source ~/.vim/title/py.vim
    endif
endfunc

autocmd BufNewFile * normal G
