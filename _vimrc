"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  Created by David Xie
"  E-mail : mykingheaven@gmail.com
"   blog  : http://davidx.me/
"
"  CreatedTime:2009-02-06 14:03
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 全局配置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"关掉兼容模式
set nocompatible

"设置历史记录步数
set history=400

"关掉提示音
set noerrorbells

"开启文件类型判断插件
filetype plugin on
filetype indent on

"当文件在外部被修改，自动更新该文件
set autoread

"激活鼠标的使用
set mouse=a

"设置','为leader快捷键
let mapleader = ","
let g:mapleader = ","

"设置快速保存和退出
"快速保存为,s
"快速退出（保存）为,w
"快速退出（不保存）为,q
nmap <leader>s :w!<cr>
nmap <leader>w :wq!<cr>
nmap <leader>q :q!<cr>
nmap <leader>t :tabnew 
nmap <leader>g gt

"设置快捷键为win方式的快捷键
source $VIMRUNTIME/mswin.vim
behave mswin

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 字体和颜色
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"开启语法
syntax enable

"设置配色
if has("gui_running")
	colorscheme ir_black
    set lines=25  
    set columns=80  
	"设置字体
	set guifont=dejaVu\ Sans\ MONO\ 10
	if has("mac") || has("gui_macvim")
		set lazyredraw  "延迟重绘  
		set transparency=15
		set guifont=Monaco:h14
	endif
	if has("win32")
		set guifont=Consolas:h14
	endif
else
	colorscheme slate
endif

"高亮显示当前行
set cursorline
hi cursorline guibg=#222222
hi CursorColumn guibg=#333333

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 文件和备份 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"关闭自动备份和交换文件
set nobackup
set nowb
set noswapfile

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 折叠
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"开启折叠
set nofen
set fdl=0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 文字处理
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"使用空格来替换tab
au filetype python set expandtab
"设置所有的tab和缩进为4个空格
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
"不要在单词中断行
set lbr

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 缩进
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"自动缩进(继承前一行的缩进)
set ai

"智能缩进
"set si

"自动换行
set wrap

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim 界面
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Turn on WiLd menu
set wildmenu

"显示标尺
set ruler

"设置命令行的高度
set cmdheight=1

"显示行数
set nu

"Do not redraw, when running macros.. lazyredraw
set lz

"设置退格
set backspace=eol,start,indent

"Bbackspace and cursor keys wrap to
set whichwrap+=<,>,h,l,b,s,[,]

"Set magic on
set magic

"关闭遇到错误时的声音提示
set noerrorbells
set novisualbell

"显示匹配的括号([{和}])
set showmatch
set matchpairs=(:),{:},[:],<:>

"How many tenths of a second to blink
set mat=2

"高亮显示搜索的内容
set hlsearch

"设置屏幕的大小
let g:explWinSize=35

"设置滚屏
set sj=1 so=3

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
map <leader>nt :NERDTreeToggle<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 状态栏的设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""
"开启状态栏
set laststatus=2

"显示当前目录的函数
function! CurDir()
    let curdir = substitute(getcwd(), '/Users/amir/', "~/", "g")
    return curdir
endfunction

"设置状态栏的信息
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
if has("mac") || has("gui_macvim")
	let Tlist_Ctags_Cmd='/opt/local/bin/ctags'
endif
map <F9> :TlistToggle<CR>
map <leader>tag :TlistToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 标签控制
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"设置标签的快捷键
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>tl :bn<cr>
map <leader>tr :bp<cr>
nnoremap <C-TAB> :tabnext<CR>
nnoremap <C-S-TAB> :tabprev<CR>

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
