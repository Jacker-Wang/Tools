set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" alternatively, pass a path where Vundle should install bundles
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Bundle 'gmarik/vundle'

" The following are examples of different formats supported.
" Keep bundle commands between here and filetype plugin indent on.
" scripts on GitHub repos
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'tpope/vim-rails.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" scripts from http://vim-scripts.org/vim/scripts.html
Bundle 'L9'
Bundle 'FuzzyFinder'

" 增强状态栏
Bundle 'rstatusline'

Bundle 'scrooloose/nerdtree'

" 更酷的启动界面
Bundle 'mhinz/vim-startify'

" 美化主题
Bundle 'tomasr/molokai'
Bundle 'morhetz/gruvbox'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'bling/vim-airline'
"Bundle 'vim-airline-themes'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'solarized'
Bundle 'jpo/vim-railscasts-theme'
"Bundle 'altercation/vim-colors-solarized.git'
"Bundle 'fholgado/minibufexpl.vim'




" *************** vim常用的基本设置 ***************

set nocompatible                                                " 不使用vi的键盘模式，而是vim自己的
"syntax enable                                                   " 开启语法高亮功能
syntax on                                                       " 语法高亮支持
set nu                                                          " 显示行号
set rnu                                                         " 显示相对行号
set wrap                                                        " 当一行文字很长时换行
"set nowrap                                                      " 当一行文字很长时取消换行
set showmatch                                                   " 当光标移动到一个括号时高亮显示对应的另一个括号
set showcmd                                                     " 回显输入的命令
set showmode                                                    " 显示当前的模式
set clipboard+=unnamed                                          " 关联系统的剪贴板
set ruler                                                       " 在编辑过程中右下角显示光标的行列信息
set nocp                                                        " 让Vim工作在不兼容模式下
set shortmess=atI                                               " 启动时不显示捐助乌干达儿童的提示
set so=6                                                        " 上下滚行时空余6行
set autoindent                                                  " 自动套用上一行的缩进方式
set smartindent                                                 " 智能缩进
set mouse=a                                                     " 开启鼠标支持
set laststatus=2                                                " 总是显示状态行
set backspace=indent,eol,start                                  " 对退格键提供更好的支持
set ts=4                                                        " 设置tab长度为4
set sts=4                                                       " 设置制表符宽度
set shiftwidth=4                                                " 设置缩进空格数
set expandtab                                                   " 用空格代替tab键
set smarttab                                                    " 更加智能的tab键
set hid                                                         " 当buffer被丢弃时隐藏它
set encoding=utf-8                                              " 默认使用utf-8编码格式
set fileencodings=utf-8,cp936,gb18030,big5,euc-kr,latin1        " 自动判断编码时 依次尝试一下编码
set ffs=unix,dos,mac                                            " 设置文件类型
set hlsearch                                                    " 高亮搜索内容
set ignorecase                                                  " 搜索模式里忽略大小写
set smartcase                                                   " 如果搜索字符串里包含大写字母，则禁用 ignorecase
set incsearch                                                   " 显示搜索的动态匹配效果
set lazyredraw                                                  " 解决某些类型的文件由于syntax导致vim反应过慢的问题
set ttyfast                                                     " 平滑地变化
set cc=80                                                       " 第80字符处显示分隔符
set foldmethod=indent                                           " 折叠方式
set nofoldenable                                                " 不自动折叠
set foldcolumn=1                                                " 在行号前空出一列的宽度
set t_Co=256                                                    " 设置256真彩色
set history=1000                                                " 设置历史记录条数
"set autoread                                                   " 当文件在外部被修改时自动载入
"set cindent                                                    " 使用c语言的缩进格式
"set whichwrap+=<,>,h,l                                         " 允许backspace和光标键跨越行边界
"set cmdheight=2                                                " 显示两行命令行
" ************** 备份设置 ****************
set nobackup                                                   " 不进行备份
set nowb                                                       "
 "重新载入文件时不要备份
set noswapfile                                                 "
" 不使用swf文件，可能导致错误无法恢复



" **************** 设置vim主题外观 ***************
set background=light                                           "
" 设置vim背景为浅色
set background=dark                                             "
" 设置vim背景为深色
set cursorline                                                  "
" 突出显示当前行
set cursorcolumn                                                "
" 突出显示当前列
"
"colorscheme molokai                                             " 设置molokai高亮主题
"colorscheme desert                                              " 设置desert高亮主题
"let g:solarized_termcolors=256
"colorscheme solarized                                           " 设置solarized高亮主题
"let g:gruvbox_termcolors=16
colorscheme gruvbox                                             " 设置gruvbox高亮主题
"
"
"
"
" ************** vim的配色 **************
"hi CursorLine cterm=NONE ctermbg=237 ctermfg=NONE
"hi CursorColumn cterm=NONE ctermbg=237 ctermfg=NONE
hi vertsplit ctermbg=bg guibg=bg
hi GitGutterAdd ctermbg=bg guibg=bg
hi GitGutterChange ctermbg=bg guibg=bg
hi GitGutterDelete ctermbg=bg guibg=bg
hi GitGutterChangeDelete ctermbg=bg guibg=bg
hi SyntasticErrorSign ctermbg=bg guibg=bg
hi SyntasticWarningSign ctermbg=bg guibg=bg
hi FoldColumn ctermbg=bg guibg=bg


" *********** NERDTree插件配置 ***********
let NERDTreeChDirMode=2                                         "" 设置当前目录为nerdtree的起始目录
let NERDChristmasTree=1                                         "" 使得窗口有更好看的效果
let NERDTreeMouseMode=1                                         "" 双击鼠标左键打开文件
let NERDTreeWinSize=25                                          "" 设置窗口宽度为25
let NERDTreeQuitOnOpen=1                                        " 打开一个文件时nerdtree分栏自动关闭
"autocmd VimEnter * NERDTree
"wincmd w
autocmd VimEnter * wincmd w

"
