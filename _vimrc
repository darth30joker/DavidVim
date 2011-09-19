""""""""""""""""""""""""""""""""""""""
"  Created by David Xie
"     E-mail    : david.xie@me.com
"      Blog     : http://davidx.me/
"  CreatedTime  : 2009-02-06 14:03
"  LastModified : 2011-07-05 15:26
"  Version      : 1.0
""""""""""""""""""""""""""""""""""""""
" => Overview
""""""""""""""""""""""""""""""""""""""
"turn off compatible
set nocompatible

"history
set history=400

"trun off bell
set noerrorbells

"turn on plugin and indent
"开启文件类型判断插件
call pathogen#infect()
filetype plugin on
filetype indent on

"auto read file when changed
set autoread

"active mouse
set mouse=a

"enable syntax support
syntax enable

"set leader key to ','
let mapleader = ","
let g:mapleader = ","

"set shortcuts for save and quit
nmap <leader>s :w!<cr>
nmap <leader>w :wq!<cr>
nmap <leader>q :q!<cr>

"import mswin.vim
source $VIMRUNTIME/mswin.vim
behave mswin

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => fonts and colors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set background=dark
if has("gui_running")
    "initialize window posision
    winpos 0 0
    "set colorscheme
    colorscheme solarized
    if has("mac") || has("gui_macvim")
        set lazyredraw
        "set window size
        set lines=46
        set columns=157
        "set font
        set guifont=dejaVu\ Sans\ MONO:h14
    else
        set guifont=dejaVu\ Sans\ MONO\ 11
    endif
    if has("win32")
        set guifont=Consolas:h14
    endif
else
    let g:solarized_termcolors=256
    colorscheme solarized
endif

"highlight current line
set cursorline
hi cursorline guibg=#222222
hi CursorColumn guibg=#333333

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => files and backup 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"turn off backup and swap
set nobackup
set nowb
set noswapfile

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => folding
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"turn on folding
set nofen
set fdl=0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => word processing
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"use spaces for tab
au filetype python set expandtab
"all tab are 4 spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
"don't break line
set lbr
set list
set lcs=tab:>.,eol:<,nbsp:%,trail:.

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => indent
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"auto indent
set ai

"wrap
set wrap

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim 界面
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"remove toolbar and menu
set guioptions-=m
set guioptions-=T

"turn on wild menu
set wildmode=longest,list
set wildmenu
"
"show ruler
set ruler

"set command line height to 1
set cmdheight=1

"show line number
set nu

"do not redraw, when running macros.. lazyredraw
set lz

"set backspace
set backspace=eol,start,indent

"backspace and cursor keys wrap to
set whichwrap+=<,>,h,l,b,s,[,]

"set magic on
set magic

"turn off bell
set noerrorbells
set novisualbell

"
set showmatch
set matchpairs=(:),{:},[:],<:>

"How many tenths of a second to blink
set mat=2

"highlight research
set hlsearch

"set screen size
let g:explWinSize=35

"set scroll
set sj=1 so=3

"when split, use same height and width
set equalalways

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 编码设置 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"设置编码
set encoding=utf-8
"设置文件编码
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NerdTree 插件
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"设置NerdTree的快捷键为F10
map <F10> :NERDTreeToggle<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Command Line
""""""""""""""""""""""""""""""""""""""""""""""""""""""
"turn on command line
set laststatus=2

"function of show infomation of current file
function! CurDir()
    let curdir = substitute(getcwd(), '/Users/amir/', "~/", "g")
    return curdir
endfunction

"format statusline
set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{CurDir()}%h\ \ \ Line:\ %l/%L:%c

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 标签栏的设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""
set showtabline=2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Tag list (ctags)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"不同时显示多个文件的tag，只显示当前文件的
let Tlist_Show_One_File = 1
"如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Exit_OnlyWindow = 1
"在右侧窗口中显示taglist窗口
let Tlist_Use_Right_Window = 1
"设置TagList的快捷键为F9
map <F9> :TagbarToggle<CR>
map <leader>tag :TlistToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 标签控制
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"设置标签的快捷键
set guitablabel=%t
autocmd! bufwritepost .vimrc source ~/.vimrc

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 代码折叠
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set fdm=indent

""""""""""""""""""""""""""""""
" bufExplorer插件的设置
""""""""""""""""""""""""""""""
let g:bufExplorerSortBy='mru'
let g:bufExplorerSplitRight=0
let g:bufExplorerSplitVertical=1
let g:bufExplorerSplitVertSize = 30
let g:bufExplorerUseCurrentWindow=1
autocmd BufWinEnter \[Buf\ List\] setl nonumber

"""""""""""""""""""""""""""""""
" => snipMate
"""""""""""""""""""""""""""""""
ino <c-j> <c-r>=TriggerSnippet()<cr>
snor <c-j> <esc>i<right><c-r>=TriggerSnippet()<cr>

"""""""""""""""""""""""""""""""
" => pydiction
"""""""""""""""""""""""""""""""
let g:pydiction_location = '/Users/davidx/.vim/ftplugin/pydiction/complete-dict'

"""""""""""""""""""""""""""""""
" 最大化窗口
"""""""""""""""""""""""""""""""
function! Maximize_Window()
  silent !wmctrl -r :ACTIVE: -b add,maximized_vert,maximized_horz
endfunction

"""""""""""""""""""""""""""""""
" 操作系统特别设置
"""""""""""""""""""""""""""""""
if has("mac")
    let g:tagbar_ctags_bin='/usr/local/bin/ctags'
endif

let qb_hotkey="<F4>"
