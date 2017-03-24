"=========================================================
" vundle安装:
"     git clone https://github.com/gmarik/vundle.git~/.vim/bundle/vundle
" vundle管理插件(注意：要先安装vim才能使用下面的命令)
" :BundleList          -列举出列表中(.vimrc中)配置的所有插件
" :BundleInstall       -安装列表中全部插件
" :BundleInstall!      -更新列表中全部插件
" :BundleSearch foo    -查找foo插件
" :BundleSearch! foo   -刷新foo插件缓存
" :BundleClean         -清除列表中没有的插件
" :BundleClean!        -清除列表中没有的插件
"=========================================================
"vundle{
    " :PluginList       - lists configured plugins
    " :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
    " :PluginSearch foo - searches for foo; append `!` to refresh local cache
    " :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

    " 可以通过以下四种方式指定插件的来源
    " a) 指定Github中vim-scripts仓库中的插件，直接指定插件名称即可，插件明中的空格使用“-”代替。
    "    Bundle 'L9'
    " b) 指定Github中其他用户仓库的插件，使用“用户名/插件名称”的方式指定
    "    Bundle 'tpope/vim-fugitive'
    " c) 指定非Github的Git仓库的插件，需要使用git地址
    "    Bundle 'git://git.wincent.com/command-t.git'
    " d) 指定本地Git仓库中的插件
    "    Bundle 'file:///Users/gmarik/path/to/plugin'
    " set nocompatible              " be iMproved, required
	filetype off                              "required
	set rtp+=~/.vim/bundle/vundle
	call vundle#begin()

	Plugin 'gmarik/vundle'                    "必须安装

    Plugin 'SirVer/ultisnips'             " Track the engine.
    Plugin 'honza/vim-snippets'           " Snippets are separated from the engine. Add this if you want them: Plugin 'unite.vim'
    Plugin 'kien/rainbow_parentheses.vim' " 括号增强,彩色
    Plugin 'trailing-whitespace'          " 增加尾部空格的显示
    Plugin 'scrooloose/nerdcommenter'     " 快速注释
    Plugin 'surround.vim'                 " 补全括号或引号等cs,ds,yss
    " Plugin 'bling/vim-bufferline'        " 显示在airline里的buffer

    Plugin 'The-NERD-tree'
    Plugin 'minibufexpl.vim'              " buffer插件
    Plugin 'ctags.vim'                    " taglist的辅助工具
	Plugin 'majutsushi/tagbar'            " 显示函数列表，taglist的替代品
    " Plugin 'taglist.vim'                  " 显示函数列表
    Plugin 'timestamp.vim'                " 插入最后修改时间
    Plugin 'plasticboy/vim-markdown'      " Markdown格式高亮
    Plugin 'flazz/vim-colorschemes'       " 包含大部分配色
    Plugin 'molokai'                      " 配色
    "Plugin 'vim-colors-solarized'
    Plugin 'Tabular'                      " 格式对齐插件
    Plugin 'mru.vim'                      " 历史文件
    Plugin 'ctrlp.vim'                    " 文件搜寻
    Plugin 'Easymotion'                   " 文件快速定位
    Plugin 'pydoc.vim'                    " python文档 :Pydoc int
    Plugin 'Smooth-Scroll'                " 平滑滚动
    Plugin 'bling/vim-airline'            " 状态栏
    Plugin 'fugitive.vim'                 " git插件
    Plugin 'Gist.vim'                     " gist
    Plugin 'airblade/vim-gitgutter'       " git diff
    Plugin 'WebAPI.vim'                   " An Interface to WEB APIs
    Plugin 'Valloric/YouCompleteMe'       " 补全插件
    "Plugin 'SuperTab'                     " 加速补全
    Plugin 'winmanager'                   " 界面分割
    " Plugin 'Townk/vim-autoclose'          " 括号补全
    " Plugin 'pyflakes.vim'                 " python语法检测
    " Plugin 'mattn/emmet-vim'              " Zencoding
    " Plugin 'Pydiction'                    " python自动补全
    " Plugin 'bufexplorer.zip'              " 打开历史文件 :BufExplorer
    " Plugin 'OmniCppComplete'              " c/c++补全
    " Plugin 'Syntastic'                    " 语法检查
    " Bundle 'scrooloose/nerdtree'          " 进入当前目录的树形界面
    " Bundle 'tpope/vim-fugitive'           " 可以让你在 vim 中执行一些简单的 Git 命令

	call vundle#end()                         "required
	filetype plugin indent on                 "required 开启插件
"}


"General {
	"========================================
	" vim基本配置
	"========================================
	set nocompatible	" 关闭 vi 兼容模式，使用vundle配置
	syntax on			" 自动语法高亮
	set number			" 显示行号
	set cursorline		" 突出显示当前行
	set ruler			" 打开状态栏标尺
	set shiftwidth=4	" 设定 << 和 >> 命令移动时的宽度为 4
	set softtabstop=4	" 使得按退格键时可以一次删掉 4 个空格
	set tabstop=4		" 设定 tab 长度为 4
	set nobackup		" 覆盖文件时不备份
	set autochdir		" 自动切换当前目录为当前文件所在的目录
	set backupcopy=yes			" 设置备份时的行为为覆盖
	set ignorecase smartcase	" 搜索时忽略大小写，但在有一个或以上大写字母时仍保持对大小写敏感
	set nowrapscan		" 禁止在搜索到文件两端时重新搜索
	set incsearch		" 输入搜索内容时就显示搜索结果
	set hlsearch		" 搜索时高亮显示被找到的文本
	set noerrorbells	" 关闭错误信息响铃
	set novisualbell	" 关闭使用可视响铃代替呼叫
	set t_vb=			" 置空错误铃声的终端代码
	set showmatch		" 插入括号时，短暂地跳转到匹配的对应括号
	set matchtime=1	    " 短暂跳转到匹配括号的时间
	set magic			" 设置魔术
	set hidden			" 允许在有未保存的修改时切换缓冲区，此时的修改由 vim 负责保存
	set guioptions-=T	" 隐藏工具栏
	set guioptions-=m	" 隐藏菜单栏
	set smartindent		" 开启新行时使用智能自动缩进
	set backspace=indent,eol,start	" 不设定在插入状态无法用退格键和 Delete 键删除回车符
	set cmdheight=1		" 设定命令行的行数为 1
	set laststatus=2	" 显示状态栏 (默认值为 1, 无法显示状态栏)
	set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ %c:%l/%L%)\
	set modifiable
    "set ai              " 自动缩进
	"set si              " 智能缩进
	"设置在状态行显示的信息
	"set foldenable        " 开始折叠
	"set foldmethod=syntax " 设置语法折叠
	"set foldcolumn=0      " 设置折叠区域的宽度
	"setlocal foldlevel=1  " 设置折叠层数为
	"set foldclose=all     " 设置为自动关闭折叠
	"nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>
	"用空格键来开关折叠
"}

"other{
    "-----------------------------------------------------------------------
	"命令说明：
	"autocmd: 在文件读写，缓冲区或窗口进出，甚至 Vim 退出等时刻，你都可以指定
	"         要自动执行的命令
	"nnoremap: 映射在普通模式下生效
	"inoremap: 映射在插入模式下生效
	"-----------------------------------------------------------------------

	" set fileformats=unix,dos,mac
	" nmap <leader>fd :se fileformat=dos<CR>
	" nmap <leader>fu :se fileformat=unix<CR>

	let b:javascript_fold=1				" 打开javascript折叠
	let javascript_enable_domhtmlcss=1	" 打开javascript对dom、html和css的支持

	" 让 Tohtml 产生有 CSS 语法的 html
	" syntax/2html.vim，可以用:runtime! syntax/2html.vim
	let html_use_css=1

	" 选中状态下 Ctrl+c 复制
	vmap <C-c> "+y

	" Buffers操作快捷方式!
	nnoremap <C-RETURN> :bnext<CR>
	nnoremap <C-S-RETURN> :bprevious<CR>

	" Tab操作快捷方式!
	nnoremap <C-TAB> :tabnext<CR>
	nnoremap <C-S-TAB> :tabprev<CR>

	"窗口分割时,进行切换的按键热键需要连接两次,比如从下方窗口移动
	"光标到上方窗口,需要<c-w><c-w>k,非常麻烦,现在重映射为<c-k>,切换的
	"时候会变得非常方便.
	nnoremap <C-h> <C-w>h
	nnoremap <C-j> <C-w>j
	nnoremap <C-k> <C-w>k
	nnoremap <C-l> <C-w>l

	"一些不错的映射转换语法（如果在一个文件中混合了不同语言时有用）
	nnoremap <leader>1 :set filetype=xhtml<CR>
	nnoremap <leader>2 :set filetype=css<CR>
	nnoremap <leader>3 :set filetype=javascript<CR>
	nnoremap <leader>4 :set filetype=php<CR>

	" Python 文件的一般设置，比如不要 tab 等
	autocmd FileType python set tabstop=4 shiftwidth=4 expandtab
	autocmd FileType python map <F12> :!python %<CR>

	" 设置字典 ~/.vim/dict/文件的路径
	autocm filetype javascript set dictionary=$VIMFILES/dict/javascript.dict
	autocmd filetype css set dictionary=$VIMFILES/dict/css.dict
	autocmd filetype php set dictionary=$VIMFILES/dict/php.dict
"}


"function{
	"其他手动安装插件配置
	" return OS type, eg: windows, or linux, mac, et.st..
	function! MySys()
		if has("win16") || has("win32") || has("win64") || has("win95")
			return "windows"
		elseif has("unix")
			return "linux"
		endif
	endfunction

	" 用户目录变量$VIMFILES
	if MySys() == "windows"
		let $VIMFILES = $VIM.'/vimfiles'
	elseif MySys() == "linux"
		let $VIMFILES = $HOME.'/.vim'
	endif

	" 设定doc文档目录
	let helptags=$VIMFILES.'/doc'

	" 设置字体 以及中文支持
	if has("win32")
		set guifont=Inconsolata:h12:cANSI
	endif

	" 配置多语言环境
	if has("multi_byte")
		" UTF-8 编码
		set encoding=utf-8
		set termencoding=utf-8
		set formatoptions+=mM
		set fencs=utf-8,gbk

		if v:lang =~? '^\(zh\)\|\(ja\)\|\(ko\)'
			set ambiwidth=double
		endif

		if has("win32")
			source $VIMRUNTIME/delmenu.vim
			source $VIMRUNTIME/menu.vim
			language messages zh_CN.utf-8
		endif
	else
		echoerr "Sorry, this version of (g)vim was not compiled with +multi_byte"
	endif
"}

" <F5> 编译运行 {
        map <F5> :call CompileRun()<CR>
        func! CompileRun()
            exec "w"
            if &filetype == 'c'
                exec "!g++ % -o %<"
                exec "!time ./%<"
                exec "!rm ./%<"
            elseif &filetype == 'cpp'
                exec "!g++ % -o %<"
                exec "!time ./%<"
                exec "!rm ./%<"
            elseif &filetype == 'java'
                exec "!javac %"
                exec "!time java %<"
                exec "!rm ./%<.class"
            elseif &filetype == 'sh'
                exec "!time bash %"
            elseif &filetype == 'python'
                exec "!time python %"
            elseif &filetype == 'html'
                exec "!chrome % &"
            elseif &filetype == 'go'
                exec "!go build %<"
                exec "!time go run %"
            elseif &filetype == 'md' "MarkDown 解决方案为VIM + Chrome浏览器的MarkDown Preview Plus插件，保存后实时预览
                exec ":!open -a /Applications/Google\ Chrome.app/ % &"
            elseif &filetype == 'javascript'
                exec "!time node %"
            elseif &filetype == 'coffee'
                exec "!time coffee %"
            elseif &filetype == 'ruby'
                exec "!time ruby %"
            endif
        endfunc
" }

"插件功能配置
"=========================================================================================
"NERD_tree{
	"--------------------------------------------------------------
	" 作用：以树状方式浏览系统中的文件和目录
	"
	"命令                             描述
	"?                                显示帮助信息;
	"F7                               打开或关闭NERDTree，此键可以根据自己需求定义。     
	":NERDTreeToggle                  同F7                                               
	":NERDTree                        打开NERDTree                                       
	":NERDTreeClose                   关闭NERDTree                                       
	"q                                关闭这个NERDTree窗口；                             
	"A                                调整NERDTree窗口大小（最大化、最小化）             
	":Bookmark <name>                 将目录树保存为指定名字的书签；                     
	":NERDTreeFromBookmark <name>     打开指定书签名的目录树；                           
	":ClearBookmarks <name>           删除指定书签；                                     
	":ClearAllBookmarks               删除所有书签；                                     
	"I                                大写"i"，显示或者隐藏"."号开头的文件和目录；       
	"f                                切换是否使用文件筛选；                             
	"F                                切换是否显示文件；                                 
	"B                                切换是否显示书签表；                               
	":NERDTreeCWD                     将CWD设为目录树根目录；                            
	"CD                               将CWD目录作为目录树的根目录；                      
	"C                                将当前目录作为目录树的根目录；                     
	"u                                将当前根目录的上级目录作为根目录；                 
	"U                                同u;                                               
	"cd                               将选定的目录作为CWD目录；                          
	"R                                刷新当前根目录                                     
	"r                                刷新当前目录                                       
	"o                                打开\关闭文件或目录，打开文件时光标会跳到编辑区域；
	"O                                递归打开当前目录下的所有目录                       
	"x                                关闭父目录；                                       
	"X                                关闭所有子目录；                                   
	":NERDTreeFind                    在目录树中定位到当前打开的文件；                   
	"P                                跳转到根目录                                       
	"p                                跳转到上层目录                                     
	"K                                到同级第一个节点                                   
	"J                                到同级最后一个节点                                 
	"k                                跳转到上一个节点；                                 
	"j                                跳转到下一个节点；                                 
	"<C-K>                            跳转到同级上一个节点；                             
	"<C-J>                            跳转到同级下一个节点；                             
	"m                                显示文件系统管理菜单（添加、删除、移动、复制、现在属性等操作)
	"o                                打开\关闭文件或目录，打开文件时光标会跳到编辑区域；
	"go                               打开目录树光标所在文件，但光标依然保留在目录树中； 
	"i                                在水平分割割的窗口中打开选定文件；                 
	"gi                               同i，但光标依然保留在目录树中；                    
	"s                                在垂直分割割的窗口中打开选定文件；                 
	"gs                               同s，但光标依然保留在目录树中；                    
	"t                                在新标签页中打开文件,并使新的标签到focus状态；     
	"T                                在新标签页中打开文件，保留原标签的focus状态；      
	"--------------------------------------------------------------
	" F3 NERDTree 切换
	map  <F3> :NERDTreeToggle<CR>
	imap <F3> <ESC>:NERDTreeToggle<CR>
	let NERDTreeWinPos  = 'left'       " 显示在左边
	let NERDTreeWinSize = 30           " 显示宽带
"}


"snippets{
	"------------------------------------------------------
	" 作用：自动补齐
	" 支持多种语言C/CPP/JAVA/Ruby/Python/perl/php/tex/html/Javascript/objc/sh/zsh……
	" 几乎能想到的都覆盖了，此工具只有tab一个键
	" 输入inc，再按TAB键，就会填充为#include <stdio.h>
	"------------------------------------------------------
"}

"rainbow_parentheses{
	"------------------------------------------------------
	" 作用：括号高亮；括号(小括号/中括号/大括号)
	"------------------------------------------------------
"}

"trailing-whitespace{
	"------------------------------------------------------
	" 作用：标志无效空格
	" 将代码行中的无效空格标红
	"------------------------------------------------------
	"let on:FixWhitespace
"}

"commentary{
	"------------------------------------------------------
	"作用：批量注释单行或多行以及去除注释
	"绑定退格键，选择多行可以直接以/**/的形式注释代码
	"------------------------------------------------------
"}

"surround{
	"------------------------------------------------------
	"作用：处理成对的包围符号……比如说括号，单双引号等
	"比如：光标在"Hello world!"时按下cs"',则会替代双引号为
	"单引号'Hello world!'
	"常用指令：
	"ci: 例如，ci(，或者ci)，将会修改()之间的文本；
	"di: 剪切配对符号之间文本；
	"yi: 复制；
	"ca: 同ci，但修改内容包括配对符号本身；
	"da: 同di，但剪切内容包括配对符号本身；
	"ya: 同yi，但复制内容包括配对符号本身。
	"PS. dib等同于di(。diB等同于di{。
	"cs: 替换两边的符号内容
	"cst:反回到初始的双引号
	"ds: 删除符号
	"...........
	"------------------------------------------------------
"}

"bufexplorer{
	"-------------------------------------------------------
	" 作用：快速浏览和操作Buffer。
	" 当你只编辑一个buffer的时候MiniBufExplorer派不上用场, 当
	" 你打开第二个buffer的时候, MiniBufExplorer窗口就自动弹出来了
	" \be 全屏方式查看全部打开的文件列表
	" \bv 上下方式查看；垂直打开一个窗口浏览缓存 
	" \bs 水平方式查看
	" :bn     打开当前buffer的下一个buffer
	" :bp     打开当前buffer的前一个buffer
	" :b"num" 打开指定的buffer
	" 当你把光标置于vim狭长的窗口时, 有下面几个快捷键可以用:
	" <Tab>   向前循环切换到每个buffer名上
	" <S-Tab> 向后循环切换到每个buffer名上
	" <Enter> 在打开光标所在的buffer
	" d       删除光标所在的buffer
	"-------------------------------------------------------
"}

"taglist{
	"-------------------------------------------------------
	" 作用：查看函数列表；
	" 需要先安装ctags程序: sudo apt-get install ctags
	" 方法：在你想要看的代码的文件中使用命令：ctags -R 会在本文件夹中生成tags文
	" 件，里面包含了什么函数在哪个文件中的第几行，什么变量定义在哪个文件的第几
	" 行等这时候用vim打开你要看的代码文件，在命令行输入“：TaglistOpen或者
	" TaglistToggle”就会打开taglist的窗口使用“ctrl w w”将光标调到taglist的窗口
	" 里。在窗口里分别区分了宏定义和全局变量，函数等
	"
	" taglist窗口中，可以使用下面的快捷键：
	" <CR>          跳到光标下tag所定义的位置，用鼠标双击此tag功能也一样
	" o             在一个新打开的窗口中显示光标下tag
	" p              预览tag的定义列表
	" d             从taglist中删除文件
	" <Space>       显示光标下tag的原型定义
	" u             更新taglist窗口中的tag
	" s             更改排序方式，在按名字排序和按出现顺序排序间切换
	" x             taglist窗口放大和缩小，方便查看较长的tag
	" +             打开一个折叠，同zo
	" -             将tag折叠起来，同zc
	" *             打开所有的折叠，同zR
	" =             将所有tag折叠起来，同zM
	" [[            跳到前一个文件
	" ]]            跳到后一个文件
	" q             关闭taglist窗口
	" <F1>          显示帮助
	" <F4>          打开隐藏taglist窗口
	"-------------------------------------------------------
	"if MySys() == "windows" " 设定windows系统中ctags程序的位置
	"	let Tlist_Ctags_Cmd = '"'.$VIMRUNTIME.'/ctags.exe"'
	"elseif MySys() == "linux" " 设定linux系统中ctags程序的位置
	"	let Tlist_Ctags_Cmd = '/usr/bin/ctags'
	"endif
	"nnoremap <silent><F4> :TlistToggle<CR>
	"let Tlist_WinWidt =28               "设置taglist的宽度
	"let Tlist_Show_One_File = 1			" 不同时显示多个文件的tag，只显示当前文件的
	"let Tlist_Exit_OnlyWindow = 1		" 如果taglist窗口是最后一个窗口，则退出vim
	"let Tlist_Use_Right_Window = 1		" 在右侧窗口中显示taglist窗口
	"let Tlist_File_Fold_Auto_Close=1	" 自动折叠当前非编辑文件的方法列表
	"let Tlist_Auto_Open = 0             " 启动vim后是否自动打开taglist窗口
	"let Tlist_Auto_Update = 1           " 自动升级
	"let Tlist_Hightlight_Tag_On_BufEnter = 1
	"let Tlist_Enable_Fold_Column = 0
	"let Tlist_Process_File_Always = 1
	"let Tlist_Display_Prototype = 0
	"let Tlist_Compact_Format = 1
"}

"tagbar{
	"-------------------------------------------------------
	" 作用：查看函数列表；
	" 需要先安装ctags程序: sudo apt-get install ctags
	" 命令	    描述
	" F1	    关闭/显示帮助信息；
	" q	        关闭Tagbar窗口；
	" x	        放大/缩小Tagbar窗口；需要打开modifiable：set modifiable
	" s	        项目排序切换；
	" +,        <kPlus>, zo	展开折叠；
	" -,        <kMinus>, zc	收起折叠；
	" o, za	    折叠收起\展开切换；
	" *,        <kMultiply>, zR	展开所有折叠；
	" =, zM	    收起所有折叠；
	" 回车	    转到标签定义处，并且光标跳转到标签定义处；
	" p	        转到标签定义处，但光标停留在Tagbar的窗口；
	" P	        在预览窗口显示标签；
	" <C-N>	    跳到下一个上级标签；
	" <C-P>	    跳到上一个上级标签；
	" <Space>	显示标签定义；
	"-------------------------------------------------------
	if MySys() == "windows" " 设定windows系统中ctags程序的位置
		let g:tagbar_ctags_bin = '"'.$VIMRUNTIME.'/ctags.exe"'
	elseif MySys() == "linux" " 设定linux系统中ctags程序的位置
		let g:tagbar_ctags_bin = '/usr/bin/ctags'
	endif
	let g:tagbar_width = 30              " 设置taglist的宽度
	let g:tagbar_right = 1               " 在右侧窗口中显示tagbar窗口
    autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx call tagbar#autoopen()	"如果是这些语言的程序的话，tagbar自动开启
	map <F4> :Tagbar<CR>
	" 配置好之后可以使用:Tagbar或者按配置的快捷键F4开启; 更多的配置请参看:help tagbar
"}

"markdown{
	let g:vim_markdown_frontmatter = 1
"}

"colorschemes{
	"-------------------------------------------------------
	" 作用：vim配置方案
	" 可以配置系统的配色方案，也可以配置为自己写/下载的配色方案
	" 到一个配色网站上选择一个配色方案下载到~/.vim/colors目录下面。这里推荐一
	" 个非常好的网站:http://bytefluent.com/vivify/
	"-------------------------------------------------------
	" set t_Co=256             " required
	" colorscheme desert       " 设置配色方案
"}

"Tabular{
    "-------------------------------------------------------
	" 代码对齐工具
	" 允许你在 Vim 中按等号、冒号、表格等来对齐文本；假如我想让其中的两行按等
	" 号对齐，则将光标定位到有等号的那行，执行 :Tab /= 即可
    "-------------------------------------------------------
	"let g:multi_cursor_start_key = '<C-n>'
	"let g:multi_cursor_start_word_key='g<C-n>'
	"let g:multi_cursor_next_key = '<C-n>'
	"let g:multi_cursor_prev_key = '<C-p>'
	"let g:multi_cursor_skip_key = '<C-x>'
	"let g:multi_cursor_quit_key = '<Esc>'
"}

"mru{
	"-------------------------------------------------------
	" 作用：维护了一个最近打开文件的列表
	" :MRU
	" 在该命令后加空格，然后TAB或者Ctrl+D会自动补全。
	" 在文件列表中选择后，‘Enter’会在当前窗口打开，‘o’可以在新窗口打开该文件，
	" ‘v’可以只读打开，‘t’会在新的tab打开。打开符合vim正则的文件列表: :MRU vim
	"-------------------------------------------------------
	"let MRU_File='/tmp/mru_files'                   "设置默认保存最近打开文件列表的文件，默认$HOME/.vim_mru_files；
	"let MRU_Max_Entries = 1000                      "设置默认记录的打开文件数量，默认100；
	"let MRU_Exclude_Files = '^/tmp/.*|^/var/tmp/.*' "设置默认不包含哪些文件，默认空；
	"let MRU_Include_Files = '.c$|.h$'               "设置默认只包含哪些文件，默认空；
	"let MRU_Window_Height = 15                      "设置MRU窗口的高度，默认8；
	"let MRU_Use_Current_Window = 1                  "设置默认在本窗口打开最近文件列表，而不是新的窗口；
	"let MRU_Auto_Close = 0                          "设置默认不关闭MRU窗口，默认关闭；
	"let MRU_Max_Menu_Entries = 20                   "设置MRU窗口默认显示多少条记录，默认10；
	"let MRU_Max_Submenu_Entries = 15                "设置MRU窗口默认子菜单显示多少条记录，默认10
"}

"ctrlp{
	"------------------------------------------------------
	" 作用: 模糊搜索, 可以搜索文件/buffer/mru/tag等等
	" 绑定快捷键:
	" <leader>-f模糊搜索最近打开的文件(MRU)
	" <leader>-p模糊搜索当前目录及其子目录下的所有文件
	" 启用ctrlp:
	"	运行命令:CtrlP或:CtrlP [starting-directory]来以查找文件模式来启用 ctrlp
	"	运行命令:CtrlPBuffer或:CtrlPMRU来以查找缓冲或最近打开文件模式来启用ctrlp
	"	运行命令CtrlPMixed来查找文件、查找缓冲和最近打开文件混合模式来启动 ctrlp
	" 基本使用:
	"   按<c-f>和<c-b>在三种查找模式中互相切换
	"   按<c-y>来创建新文件和对应的父目录
	"   按<c-d>来切换到只查找文件名而不是全路径
	"	ctrl + j/k: 进行上下选择
	"	ctrl + x:   在当前窗口水平分屏打开文件
	"	ctrl + v:   同上, 垂直分屏
	"	ctrl + t:   在tab中打开
	"	按<c-z>来标识或取消标识文件，然后按<c-o>来打开文件
	"	按<c-n>，<c-p>来在提示历史中选择下一个/上一个字符串
	"------------------------------------------------------

	"Change the default mapping and the default command to invoke CtrlP
	let g:ctrlp_map = '<leader>p'
	let g:ctrlp_cmd = 'CtrlP'
	map <leader>f :CtrlPMRU<CR>
	let g:ctrlp_custom_ignore = {
	    \ 'dir':  '\v[\/]\.(git|hg|svn|rvm)$',
	    \ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz|pyc)$',
	    \ }
	let g:ctrlp_working_path_mode=0
	let g:ctrlp_match_window_bottom=1
	let g:ctrlp_max_height=15
	let g:ctrlp_match_window_reversed=0
	let g:ctrlp_mruf_max=500
	let g:ctrlp_follow_symlinks=1
"}

"Easymotion{
	"------------------------------------------------------
	"作用：快速跳转
	"用法：
	"跳转到当前光标前后的位置(w/b)：快捷键<leader><leader>w(即,,w)和
	"<leader><leader>b(即,,b)   助记: word and back
	"搜索跳转(s)：快捷键<leader><leader>s(即,,s), 然后输入要搜索的字母, 这个跳
	"转是双向的； 助记: search
	"------------------------------------------------------
	"let g:EasyMotion_smartcase = 1
	"let g:EasyMotion_startofline = 0                      " keep cursor colum when JK motion
	"map <Leader><leader>h <Plug>(easymotion-linebackward)
	"map <Leader><Leader>j <Plug>(easymotion-j)
	"map <Leader><Leader>k <Plug>(easymotion-k)
	"map <Leader><leader>l <Plug>(easymotion-lineforward)  " 重复上一次操作, 类似repeat插件, 很强大
	"map <Leader><leader>. <Plug>(easymotion-repeat)
"}

"pydoc{
	"------------------------------------------------------
	" 作用：从Python模块中提取信息并生成文档
	"------------------------------------------------------
"}

"Smooth-Scroll{
	"------------------------------------------------------
	" 作用：平滑滚动
	"------------------------------------------------------
	"noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
	"noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
	"noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
	"noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>
"}

"airline{
	"------------------------------------------------------
	" 作用：
	" 说明：
	" 首先需要安装字体：Linux: 下载 powerline fonts,并按指示安装。
	" 安装过字体需要用vim 打开 ./vim-airline/doc/airline.txt 目录中的
	" airline.txt 找到下面的一些语句 将其复制到.vimrc中就可以了
	" 例如 let g:airline_left_sep = ‘’ 这里’ ‘’ 在这里显示不出来 如果正确安
	" 装了补丁字体会是实心的箭头符号 有一个比较大的实心箭头 和一个比较小的实心
	" 箭头 选大的所在的那条语句复制到.vimrc中就可以正确契合的显示箭头符号了
	"------------------------------------------------------
	"这个是安装字体后 必须设置此项"
	"let g:airline_powerline_fonts = 1

	"打开tabline功能,方便查看Buffer和切换,省去了minibufexpl插件
	"let g:airline#extensions#tabline#enabled = 1
	"let g:airline#extensions#tabline#buffer_nr_show = 1
	"
	"设置切换Buffer快捷键"
	"nnoremap <C-tab> :bn<CR>
	"nnoremap <C-s-tab> :bp<CR>
	"关闭状态显示空白符号计数
	"let g:airline#extensions#whitespace#enabled = 0
	"let g:airline#extensions#whitespace#symbol = '!'
	"设置consolas字体"前面已经设置过
	"set guifont=Consolas\ for\ Powerline\ FixedD:h11
	"if !exists('g:airline_symbols')
	"    let g:airline_symbols = {}
	"endif
	"old vim-powerline symbols
	"let g:airline_left_sep = '⮀'
	"let g:airline_left_alt_sep = '⮁'
	"let g:airline_right_sep = '⮂'
	"let g:airline_right_alt_sep = '⮃'
	"let g:airline_symbols.branch = '⭠'
	"let g:airline_symbols.readonly = '⭤'
"}

"fugitive{
	"------------------------------------------------------
	" 作用：比较
	" 在vim中使用命令 :Gdiff， 就可以方便的查看本次修改和仓库里代码的改动
	"------------------------------------------------------
"}

"YouCompleteMe{
	"------------------------------------------------------
    " 作用：代码自动补全
	" 配置说明：
	" 1、系统要有libclang(3.6以上)，cmake，Python，ycm_support_libs
	" sudo apt-get install libclang-dev camke python-dev build-essential
	" 2、通过Vundle装好YCM了，那么它应该位于~/.vim/bundle/YouCompleteMe；
	" 手动安装：git clone https://github.com/Valloric/YouCompleteMe.git
	" 手动下载完后检查仓库的完整性：git submodule update --init --recursive
	" 编译YCM：
	"   需要对C-family的语义支持：cd ~/.vim/bundle/YouCompleteMe; ./install.sh
	"   --clang-completer；如果不需要对C-family的语义支持：cd
	"   ~/.vim/bundle/YouCompleteMe; ./install.sh；如果需要支持C#，添加
	"   --omnisharp-complete。如果需要支持Go添加--gocode-completer
	" 3、需要在 .ycm_extra_conf.py 文件中进行配置：
	"    vim ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py 添加信息如下:
	"    '-isystem',
	"    '/usr/include',
	"    '-isystem',
	"    '/usr/include/c++/4.8.4',
	"    '-isystem',
	"    '/usr/include/c++/4.9.2',
	"    '-isystem',
	"    '/usr/include',
	"    '/usr/include/x86_64-linux-gnu/c++',
	" 实际上以上是vim自动补全时搜索路径
	"------------------------------------------------------
	let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
"}


" winmanager{
    "------------------------------------------------------
	"作用：设置界面分割
	"------------------------------------------------------
	let g:winManagerWindowLayout = "TagList|FileExplorer"  " 设置界面分割
	let g:winManagerWidth = 30							   " 设置winmanager的宽度，默认为25
	" 定义打开关闭winmanager快捷键为F9
	nmap <silent> <F9> :WMToggle<cr>
	"let g:AutoOpenWinManager = 1       " 在进入vim时自动打开winmanager
"}

"mark{
	"--------------------------------------------------------------
	" plugin - mark.vim 给各种tags标记不同的颜色，便于观看调式的插件。
	" \m mark or unmark the word under (or before) the cursor
	" \r manually input a regular expression. 用于搜索.
	" \n clear this mark (i.e. the mark under the cursor), or clear all highlighted marks .
	" \* 当前MarkWord的下一个 \# 当前MarkWord的上一个
	" \/ 所有MarkWords的下一个 \? 所有MarkWords的上一个
	"--------------------------------------------------------------
"}

"NERD_commenter{
	"--------------------------------------------------------------
	" 作用：代码注释
	" 正常模式下：
	" plugin - NERD_commenter.vim 注释代码用的，
	" [count]\cc 光标以下count行逐行添加注释(7\cc)
	" [count]\cu 光标以下count行逐行取消注释(7\cu)
	" [count]\cm 光标以下count行尝试添加块注释(7\cm)
	" \cA 在行尾插入 /* */,并且进入插入模式。 这个命令方便写注释。
	" \cc 注释当前行和选中行
	" \cn 没有发现和\cc有区别
	" \c<空格> 如果被选区域有部分被注释，则对被选区域执行取消注释操作，其它情
	"          况执行反转注释操作
	" \cm 对被选区域用一对注释符进行注释，前面的注释对每一行都会添加注释
	" \ci 执行反转注释操作，选中区域注释部分取消注释，非注释部分添加注释
	" \cs 添加性感的注释，代码开头介绍部分通常使用该注释
	" \cy 添加注释，并复制被添加注释的部分
	" \c$ 注释当前光标到改行结尾的内容
	" \cA 跳转到该行结尾添加注释，并进入编辑模式
	" \ca 转换注释的方式，比如： /**/和//
	" \cl \cb 左对齐和左右对其，左右对其主要针对/**/
	" \cu 取消注释
	" 按"v"进入visual模式下，使用组合键“\cc”， 可以轻松注释掉选择的代码块
	"--------------------------------------------------------------
	let NERDSpaceDelims=1     " 让注释符与语句之间留一个空格
	let NERDCompactSexyComs=1 " 多行注释时样子更好看
"}


"DoxygenToolkit{
	"--------------------------------------------------------------
	" plugin - DoxygenToolkit.vim 由注释生成文档，
	" 并且能够快速生成函数标准注释
	"--------------------------------------------------------------
	let g:DoxygenToolkit_authorName="Asins - asinsimple AT gmail DOT com"
	let g:DoxygenToolkit_briefTag_funcName="yes"
	map <leader>da :DoxAuthor<CR>
	map <leader>df :Dox<CR>
	map <leader>db :DoxBlock<CR>
	map <leader>dc a /* */<LEFT><LEFT><LEFT>
"}

"-----------------------------------------------------------------
" plugin – ZenCoding.vim 很酷的插件，HTML代码生成
" 插件最新版：http://github.com/mattn/zencoding-vim
" 常用命令可看：http://nootn.com/blog/Tool/23/
"-----------------------------------------------------------------

" checksyntax{
	"------------------------------------------------
	" plugin – checksyntax.vim JavaScript常见语法错误检查
	" 默认快捷方式为 F5
	"------------------------------------------------
	let g:checksyntax_auto = 0 " 不自动检查
"}

" NeoComplCache{
	"-----------------------------------------------
	" plugin - NeoComplCache.vim 自动补全插件
	"-----------------------------------------------
	let g:AutoComplPop_NotEnableAtStartup = 1
	let g:NeoComplCache_EnableAtStartup = 1
	let g:NeoComplCache_SmartCase = 1
	let g:NeoComplCache_TagsAutoUpdate = 1
	let g:NeoComplCache_EnableInfo = 1
	let g:NeoComplCache_EnableCamelCaseCompletion = 1
	let g:NeoComplCache_MinSyntaxLength = 3
	let g:NeoComplCache_EnableSkipCompletion = 1
	let g:NeoComplCache_SkipInputTime = '0.5'
	let g:NeoComplCache_SnippetsDir = $VIMFILES.'/snippets'
	" <TAB> completion.
	inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
	" snippets expand key
	imap <silent> <C-e> <Plug>(neocomplcache_snippets_expand)
	smap <silent> <C-e> <Plug>(neocomplcache_snippets_expand)
"}

"matchit{
	"-----------------------------------------------------------------
	" plugin - matchit.vim 对%命令进行扩展使得能在嵌套标签和语句之间跳转
	" % 正向匹配 g% 反向匹配
	" [% 定位块首 ]% 定位块尾
	"-----------------------------------------------------------------
"}

"vcscommand{
	"-----------------------------------------------------------------
	" plugin - vcscommand.vim 对%命令进行扩展使得能在嵌套标签和语句之间跳转
	" SVN/git管理工具
	"-----------------------------------------------------------------
"}
