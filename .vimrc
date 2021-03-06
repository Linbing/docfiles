let mapleader = "," 
let g:mapleader = ","
set tags=tags; "设置tags查找路径

"Bundle {
set nocompatible " be iMproved, required
syntax enable
"filetype on	" required
filetype off	" required
set rtp+=~/.vim/bundle/vundle/ " set the runtime path to include Vundle and initialize
call vundle#rc() "

"let Vundle manage Vundle
Bundle 'gmarik/vundle' 

"My Bundle {
Bundle 'tpope/vim-markdown'
Bundle 'scrooloose/nerdtree'
Bundle 'majutsushi/tagbar'

"自动补全
Bundle 'L9'
Bundle 'othree/vim-autocomplpop'

"注释
Bundle 'scrooloose/nerdcommenter'

"代码补全
"Bundle 'OmniCppComplete'
"Bundle 'Valloric/YouCompleteMe'

"}}

"----------------------------------------------
" YouCompleteMe config {
"let g:ycm_autoclose_preview_window_after_completion=1
"map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
" }


"----------------------------------------------
" nerdcommenter {
" [n] [number],cc 9,cc 当前行开始向下9行同时注释
" [n] [number],cu 9,cu 取消注释
" [n] ,cA 在行末插入注释，并进入插入模式
" 转换注释键(from ,ci to <space>)
map <space> <Leader>ci
" 如果leader在后面被修改会导致空格键映射出问题，因此添加下面这个
" 的作用就是时时更新键映射
map <space> <plug>NERDCommenterInvert
" }

"----------------------------------------------
" nerdtree confg {
" :ERDtree        打开NERD_tree
" NERDtreeClose  关闭NERD_tree
" o 打开关闭文件或者目录
" t 在标签页中打开
" T 在后台标签页中打开
" ! 执行此文件
" p/P 到上层目录
" K/J 到第一个/最后一个节点
" u 打开上层目录
" r 刷新当前目录
" R 递归刷新当前根目录
" m 显示文件系统菜单 添加、删除、移动操作
" map <F2> :NERDTreeToggle<CR>
nmap <C-m> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&  b:NERDTreeType == "primary") | q | endif
let NERDChristmasTree=0
let NERDTreeWinSize=35 "设置窗口大小
" let NERDTreeChDirMode=2
let NERDTreeIgnore = ['\.pyc', '\.pyo','\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr', '\.tar.gz']
let NERDTreeShowBookmarks=1
let NERDTreeWinPos="left"
"}

"----------------------------------------------
" vim-markdown {
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh']
"let g:vim_markdown_frontmatter=1
"let g:markdown_syntax_conceal = 0
"}

"----------------------------------------------
" taglist config {
"nnoremap <silent> <F8> :TlistToggle<CR><CR>
"let TlistToggle=1
"let Tlist_Show_One_File=0   
"let Tlist_File_Fold_Auto_Close=1
"let Tlist_Auto_Open=0 "打开文件的时候默认启动taglist
"let Tlist_GainFocus_On_ToggleOpen=1 "打开taglist的时候默认焦点在taglist上面
"let Tlist_Exit_OnlyWindow=1 "当剩最后一个窗口的时候退出
"}


"----------------------------------------------
" tagbar config {
"nmap <F8> :TagbarToggle<CR>
nmap <C-o> :TagbarToggle<CR>
let g:tagbar_ctags_bin = 'ctags'
let g:tagbar_width = 36
set tags=./tags
" }

"----------------------------------------------
" 设置颜色方案{
if &term == 'xterm' || &term == 'screen'
    set t_Co=256    " 颜色数目为256
endif
set background=dark
colorscheme molokai " 设置主题
highlight NonText guibg=#060606
highlight Folded  guibg=#0A0A0A guifg=#9090D0
" }



"----------------------------------------------
set number "显示文件行号
"如果设置了之后，双节选择就无法复制
"设置之后鼠标右键成了虚拟模式，功能是你可以通过鼠标点击切换窗口，比如
"打开了taglist，可以通过点击直接在taglist和文件直接切换
set mouse=a 
set tabstop=4 "编辑模式一个tab占4个空格位置
set expandtab "将输入的tab自动专程空格
set shiftwidth=4
"let mapleader = "," 
"let g:mapleader = ","
" set modeline                    " 开启模式行支持
set autoread                    " 当文件在外部被修改时，自动重新读取
set hidden                      " 允许在有未保存的修改时切换缓冲区
set ignorecase                  " 搜索时忽略大小写
set incsearch
set hlsearch
set wrapscan                    " 搜索到文件两端时重新搜索
set cindent                     " c/c++样式缩进
set cinoptions=:0,l1,t0,g0      " Linux kernel style
syntax on
" Highlight current line
"au WinLeave * set nocursorline nocursorcolumn
"au WinEnter * set cursorline cursorcolumn
"set cursorline cursorcolumn

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"----------------------------------------------
"au BufNewFile,BufRead *.py 
"\ set tabstop=4 set softtabstop=4 set shiftwidth=4 set textwidth=79 set expandtab set autoindent set fileformat=unix

