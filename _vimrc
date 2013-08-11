

" ================== neobundle begin ============================
"vim插件pathogen: 管理插件的插件

"加载 pathogen
"runtime bundle/vim-pathogen/autoload/pathogen.vim

set nocompatible
"autocmd!
filetype off
"call pathogen#runtime_append_all_bundles()
"call pathogen#helptags()
"call pathogen#infect()

set nocompatible               " be iMproved
filetype off                   " required!

" 加载 vundle
"set rtp+=$VIM/vimfiles/bundle/vundle/
"runtime bundle/vundle/autoload/vundle.vim
"call vundle#rc()
"
" 加载 neobundle
if has('vim_starting')
   set runtimepath+=$VIM/vimfiles/bundle/neobundle.vim/
 endif

 call neobundle#rc(expand('$VIM/vimfiles/bundle/'))

 " Let NeoBundle manage NeoBundle
 NeoBundleFetch 'Shougo/neobundle.vim'

" let Vundle manage Vundle
" required!
"Bundle 'gmarik/vundle'


" NeoBundles

" original repos on github
NeoBundle 'Shougo/vimproc'
NeoBundle 'Shougo/neocomplcache'
"NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/vimshell.vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimfiler.vim'
NeoBundle 'ricardovaleriano/vim-github-theme'
NeoBundle 'godlygeek/tabular'
NeoBundle 'SirVer/ultisnips'
"NeoBundle 'honza/vim-snippets'
NeoBundle 'vim-jp/autofmt'
NeoBundle 'mjbrownie/vim-htmldjango_omnicomplete'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'hallison/vim-markdown'
NeoBundle 'sukima/xmledit'
"NeoBundle 'majutsushi/tagbar'
NeoBundle 'ervandew/supertab'
NeoBundle 'jelera/vim-javascript-syntax'
NeoBundle 'othree/html5.vim'
NeoBundle 'lepture/vim-css'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'nvie/vim-flake8'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'tomasr/molokai'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'jnwhiteh/vim-golang'
NeoBundle 'mbbill/undotree'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'davidhalter/jedi-vim'
NeoBundle 'tell-k/vim-autopep8'
NeoBundle 'daylerees/colour-schemes', {'rtp': 'vim-themes'}
NeoBundle 'bling/vim-airline'
"NeoBundle 'tpope/vim-sensible'
"NeoBundle 'rstacruz/sparkup', {'rtp': 'vim/'}

" vim-scripts repos
NeoBundle 'L9'
NeoBundle 'FuzzyFinder'
NeoBundle 'Jinja'
NeoBundle 'pythoncomplete'
NeoBundle 'AutoComplPop'
NeoBundle 'django.vim'
NeoBundle 'mru.vim'
NeoBundle 'matchit.zip'
"NeoBundle 'AutoClose'
"'bufexplorer.zip'

 "gist repos
"NeoBundle 'gist:Shougo/656148', {
      "\ 'name': 'everything.vim',
      "\ 'script_type': 'plugin'}

" non github repos
"NeoBundle 'git://git.wincent.com/command-t.git'

" git repos on your local machine (ie. when working on your own plugin)
"NeoBundle 'file:///Users/gmarik/path/to/plugin'


" ================== vundle end ============================
filetype plugin indent on
syntax on
filetype plugin on

"
" Brief help
" :NeoBundleList          - list configured bundles
" :NeoBundleInstall(!)    - install(update) bundles
" :NeoBundleClean(!)      - confirm(or auto-approve) removal of unused bundles

" Installation check.
NeoBundleCheck





" 不与 vi 完全兼容
set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin
"behave xterm



"""""""""""""""""""""""""""""""""""""""""""
" 以下为自定义配置 by mozillazg
""""""""""""""""""""""""""""""""""""""""""" 

"判定当前操作系统类型
if(has("win32") || has("win95") || has("win64") || has("win16")) 
    let g:iswindows=1
else
    let g:iswindows=0
endif

" Default runtime directory
let s:runtimepath = expand(g:iswindows==1 ? '$vim/vimfiles' : '$HOME/.vim')


""""'编码设置""""""
"vim 内部编码
set encoding=utf-8
"新建文件编码
set fenc=utf-8
"vim在与屏幕/键盘交互时用的编码
set termencoding=utf-8,gbk,cp936,gb18030,big5,euc-jp,euc-kr,latin1,ucs-bom
"打开文件时用的编码
"set fileencodings=ucs-bom,utf-8,chinese,latin-1
set fileencodings=utf-8,gbk,cp936,gb18030,big5,euc-jp,euc-kr,latin1,ucs-bom
"防止菜单及 consle 输出乱码
if(g:iswindows==1)
    source $VIMRUNTIME/delmenu.vim
    source $VIMRUNTIME/menu.vim
    source $VIMRUNTIME/mswin.vim
    behave mswin
    language messages zh_CN.utf-8
endif

"关闭 fencview 插件的编码自动检测
let g:fencview_autodetect=0
" <F2> 开启 fencview 插件
map <F2> :FencView<cr>

"让vim能够默认以双字节处理那些特殊字符
if v:lang =~? '^\(zh\)\|\(ja\)\|\(ko\)'
    set ambiwidth=double
endif

"让vim不要自动设置字节序标记
set nobomb
"字体设置"
"set guifont=MSYH:h12:cUTF-8
"set guifont=Monaco:h11
"set guifont=YaHei\ Consolas\ Hybrid:h10:cANSI "h12表示的是字号大小
" 英文字体
set guifont=Source\ Code\ Pro:h11 "h12表示的是字号大小
" 中文字体
set guifontwide=WenQuanYi\ Micro\ Hei\ Mono:h11
"set guifontwide=Consolas:h12

let Tlist_File_Fold_Auto_Close=1
let Tlist_Use_Left_Window=1

"语法高亮
syntax on

"显示行号
set nu

"自动缩进
set autoindent
set cindent
if has("autocmd")
    filetype plugin indent on "根据文件进行缩进
    augroup vimrcEx
        au!
        autocmd FileType text setlocal textwidth=78
        autocmd BufReadPost *
                    \ if line("'\"") > 1 && line("'\"") <= line("$") |
                    \ exe "normal! g`\"" |
                    \ endif
    augroup END
else
    "智能缩进，相应的有cindent，官方说autoindent可以支持各种文件的缩进，但是效果会比只支持C/C++的cindent效果会差一点，但笔者并没有看出来
    set autoindent " always set autoindenting on 
endif " has("autocmd")

set tabstop=4 "让一个tab等于4个空格
" 设置缩进
set expandtab     " 使用空格代替tab.
set tabstop=4     " 空格数量是4。
set shiftwidth=4  " 自动缩进的宽度。 
set list                    "显示 tab 键
set listchars=tab:>-,trail:-    "TAB会被显示成 >--- 而行尾多余的空白字符显示成 -。
set softtabstop=4

"让vim显示行尾的空格
highlight WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+$/

"set nowrap "不自动换行
set hlsearch "高亮显示结果
set incsearch "在输入要搜索的文字时，vim会实时匹配
set backspace=indent,eol,start whichwrap+=<,>,[,] "允许退格键的使用
if(g:iswindows==1) "允许鼠标的使用
    "防止linux终端下无法拷贝
    if has('mouse')
        set mouse=a
    endif
    "au GUIEnter * simalt ~x "启动后最大化
endif

" 关闭备份
"set nobackup
"set nowritebackup

"光标上下保留的最小行数
set scrolloff=4
set t_Co=256 " Explicitly tell vim that the terminal has 256 colors "
set report=0 " always report number of lines changed "
"配色方案
"colorscheme vividchalk " desert molokai freya
" colorscheme GitHub
colorscheme github
"colorscheme darkZ"  molokai  freya
set showmatch " show matching bracket (briefly jump)
set showcmd " show typed command in status bar
"set title " show file in titlebar
set laststatus=2 " use 2 lines for the status bar
set matchtime=2 " show matching bracket for 0.2 seconds
set matchpairs+=<:> " specially for html

"总是显示标签栏
set showtabline=2
"中文帮助文档
set helplang=cn
"最大标签页数
set tabpagemax=12
" 移除菜单栏、工具栏和滚动条
set guioptions-=m
set guioptions-=T
"set guioptions-=r
"set guioptions-=b

"水平滚动条
if (has("gui_running"))
    " 图形界面下的设置
    "set nowrap "不换行
    set guioptions+=b "添加滚动条
    "colo torte "配色方案
else
    " 字符界面下的设置
    set wrap
    colo ron
endif

" 设置窗口的起始位置和大小
"winpos 275 15
set lines=30
set columns=90

"设置备份文件目录
set backupdir=d:\\Temp/

"让 vim 保存一个原始文件，且后缀是
"set patchmode=.orig

"FuzzyFinder 设置
"let g:fuf_maxMenuWidth = 200

"按键映射
" fuzzyfinder 插件
nmap <leader>ff :FufFile<cr>
nmap <leader>fd :FufDir<cr>
nmap <leader>fb :FufBuffer<cr>
nmap <leader>fh :FufHelp<cr>
let g:fuf_enumeratingLimit = 300
"nmap fhh :help FufHelp<cr>

"编辑配置文件
nmap <leader>em :e $myvimrc<cr>
"重新载入配置文件，使配置文件立即生效
nmap <leader>sm :source $myvimrc<cr>
nmap <C-T> :tabe<cr>
"nmap <C-W> :close!<cr>
"nmap <C-Tab> gt
nmap <leader>nh :set nohlsearch<cr>


"map <F5c :ls<cr>:e #
" 映射 FavEx  插件的功能
nmap <leader>fm :FF<cr>
nmap <leader>dm :FD<cr>
nmap <leader>om :FE<cr>

" NERD_tree 插件
"nmap <leader>tr :NERDTree<cr>
"nmap <leader><S-T>r :NERDTreeClose<cr>
"let NERDTreeWinPos='right'
"cmap tree NERDTree
"cmap ctree NERDTreeClose<cr>

" NERD_commenter 插件
" 支持切换单行和多行注释
map <c-h> <plug>NERDCommenterToggle


"代码折叠
set foldmethod=indent
"set foldmethod=syntax
set foldlevel=99
set foldnestmax=2
"set foldlevelstart=1

let javaScript_fold=1         " JavaScript
let perl_fold=1               " Perl
let php_folding=1             " PHP
let r_syntax_folding=1        " R
let ruby_fold=1               " Ruby
let sh_fold_enabled=1         " sh
let vimsyn_folding='af'       " Vim script
let xml_syntax_folding=1      " XML
let python_fold=1

"启用 neocomplcache 插件
"source $VIM/vimfiles/neocomplcache.conf
let g:neocomplcache_enable_at_startup=0
let g:neoComplcache_disableautocomplete=0
"let g:neocomplcache_enable_underbar_completion = 1
"let g:neocomplcache_enable_camel_case_completion = 1
"let g:neocomplcache_enable_smart_case=1
"let g:neocomplcache_min_syntax_length = 2
"let g:neocomplcache_auto_completion_start_length=2
"let g:neocomplcache_min_keyword_length=2
"let g:neocomplcache_manual_completion_start_length=2
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
set completeopt=preview


" 搜索时忽略大小写
set ignorecase
" 搜索时区分大小写
"set noignorecase
"即时搜索，在你输入字符串的过程中就高亮显示匹配点
"set incsearch

"Pydiction
"let g:pydiction_location = '$VIM/vimfiles/complete-dict'

set viminfo='1000,n$vim/viminfo

" 直接使用剪贴板
" set clipboard=unnamed

" 多少个键被敲下后执行一次交换文件刷新
set updatecount=10

" 交换文件刷新后的超时时间
set updatetime=1

" 自动保存
"set autosave=5

" 遇到空格时才折行，防止单词被拆开
set linebreak

" 高亮光标所在列
"set cursorcolumn

" pylint.vim
"autocmd FileType python compiler pylint
"let g:pylint_onwrite = 0

" snipmate
"let g:snips_trigger_key='<c-j>'

" xptemplate
"let g:xptemplate_key = '<Tab>'
"let g:xptemplate_key_pum_only = '<S-Tab>'
"let g:xptemplate_nav_next = '<Tab>'
"let g:xptemplate_nav_prev = '<Tab>'

" 代码折叠
"set fdm=marker " 按缩进折叠

" pep8
"let g:pep8_map='<C-F5>'

" flake8
" let g:flake8_ignore="W401, W806"
"let g:flake8_max_line_length=79
"autocmd BufWritePost *.py call Flake8()
"let g:flake8_ignore="E128"
let g:flake8_ignore="E501"

" jedi-vim
let g:jedi#use_tabs_not_buffers = 0
let g:jedi#popup_on_dot = 0
"let g:jedi#autocompletion_command = '<C-Space>'
"let g:jedi#autocompletion_command = '<Ta>'

"https://github.com/humiaozuzu/dot-vimrc
" highlight current line
"au WinLeave * set nocursorline nocursorcolumn
"au WinEnter * set cursorline cursorcolumn
"set cursorline cursorcolumn
"set cursorcolumn

" search operations
set incsearch
"set highlight " conflict with highlight current line
set ignorecase
set smartcase

" editor settings
" When editing a file, always jump to the last cursor position
autocmd BufReadPost *
      \ if ! exists("g:leave_my_cursor_position_alone") |
      \ if line("'\"") > 0 && line ("'\"") <= line("$") |
      \ exe "normal g'\"" |
      \ endif |
      \ endif

" Default Indentation
set autoindent
set smartindent " indent when
set tabstop=4 " tab width
set softtabstop=4 " backspace &
set shiftwidth=4 " indent width
"set textwidth=79
set expandtab " expand tab to space
autocmd FileType php setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType ruby setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=79
autocmd FileType php setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=79
autocmd FileType coffee,javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=79
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=79
autocmd FileType html,htmldjango,xhtml,haml setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=0
autocmd FileType sass,scss,css setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=79








set showtabline=2 " always show tabs in gvim, but not vim
" set up tab labels with tab number, buffer name, number of windows
function! GuiTabLabel()
  let label = ''
  let bufnrlist = tabpagebuflist(v:lnum)
  " Add '+' if one of the buffers in the tab page is modified
  for bufnr in bufnrlist
    if getbufvar(bufnr, "&modified")
      let label = '+'
      break
    endif
  endfor
  " Append the tab number
  let label .= v:lnum.': '
  " Append the buffer name
  let name = bufname(bufnrlist[tabpagewinnr(v:lnum) - 1])
  if name == ''
    " give a name to no-name documents
    if &buftype=='quickfix'
      let name = '[Quickfix List]'
    else
      let name = '[No Name]'
    endif
  else
    " get only the file name
    let name = fnamemodify(name,":t")
  endif
  let label .= name
  " Append the number of windows in the tab page
  let wincount = tabpagewinnr(v:lnum, '$')
  return label . '  [' . wincount . ']'
endfunction
set guitablabel=%{GuiTabLabel()}

" set up tab tooltips with every buffer name
function! GuiTabToolTip()
  let tip = ''
  let bufnrlist = tabpagebuflist(v:lnum)
  for bufnr in bufnrlist
    " separate buffer entries
    if tip!=''
      let tip .= " \n "
    endif
    " Add name of buffer
    let name=bufname(bufnr)
    if name == ''
      " give a name to no name documents
      if getbufvar(bufnr,'&buftype')=='quickfix'
        let name = '[Quickfix List]'
      else
        let name = '[No Name]'
      endif
    endif
    let tip.=name
    " add modified/modifiable flags
    if getbufvar(bufnr, "&modified")
      let tip .= ' [+]'
    endif
    if getbufvar(bufnr, "&modifiable")==0
      let tip .= ' [-]'
    endif
  endfor
  return tip
endfunction
set guitabtooltip=%{GuiTabToolTip()}

if exists("+showtabline")
     function! MyTabLine()
         let s = ''
         let t = tabpagenr()
         let i = 1
         while i <= tabpagenr('$')
             let buflist = tabpagebuflist(i)
             let winnr = tabpagewinnr(i)
             let s .= '%' . i . 'T'
             let s .= (i == t ? '%1*' : '%2*')
             let s .= ' '
             let s .= i . ')'
             let s .= ' %*'
             let s .= (i == t ? '%#TabLineSel#' : '%#TabLine#')
             let file = bufname(buflist[winnr - 1])
             let file = fnamemodify(file, ':p:t')
             if file == ''
                 let file = '[No Name]'
             endif
             let s .= file
             let i = i + 1
         endwhile
         let s .= '%T%#TabLineFill#%='
         let s .= (tabpagenr('$') > 1 ? '%999XX' : 'X')
         return s
     endfunction
     set stal=2
     set tabline=%!MyTabLine()
endif


 " Complete options (disable preview scratch window)
 set completeopt=menu,menuone,longest,preview
 " Limit popup menu height
 set pumheight=15
 " SuperTab option for context aware completion
 let g:SuperTabDefaultCompletionType="context"


"Alpha Window

nmap <leader>aw :call libcallnr("vimtweak.dll","SetAlpha",240)<cr>
nmap <leader>aW :call libcallnr("vimtweak.dll","SetAlpha",255)<cr>

"Maximized Window

nmap <leader>mw :call libcallnr("vimtweak.dll","EnableMaximize",1)<cr>
nmap <leader>mW :call libcallnr("vimtweak.dll","EnableMaximize",0)<cr>

"TopMost Window

nmap <leader>et :call libcallnr("vimtweak.dll","EnableTopMost",1)<cr>
nmap <leader>eT :call libcallnr("vimtweak.dll","EnableTopMost",0)<cr>

""" 更改自动完成预览窗口的高度, scratch preview window
set previewheight=5

" change quickfix window height
au FileType qf call AdjustWindowHeight(3, 5)
function! AdjustWindowHeight(minheight, maxheight)
  exe max([min([line("$"), a:maxheight]), a:minheight]) . "wincmd _"
endfunction

" MRU
let MRU_File='e:/Program Files/Vim/vimfiles/_vim_mru_files'
let MRU_Max_Entries = 1000


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim7.1在windows下的编码设置。By Huadong.Liu
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set encoding=utf-8
"set fileencodings=utf-8,chinese,latin-1
"if has("win32")
"set fileencoding=chinese
"else
"set fileencoding=utf-8
"endif
" 解决菜单乱码
"source $VIMRUNTIME/delmenu.vim
"source $VIMRUNTIME/menu.vim
" 解决consle输出乱码
"language messages zh_CN.utf-8


" limitMate
let delimitMate_autoclose = 1
 "au FileType html let b:delimitMate_autoclose = 1

" au FileType javascript call JavaScriptFold()


" tagbar
"let g:tagbar_ctags_bin = 'E:\program files\Ctags\ctags.exe'
"let g:tagbar_left = 1
"nnoremap <silent> <F9> :TagbarToggle<CR>
"nnoremap <leader>tg :TagbarToggle<CR>
"autocmd FileType xyz nested :TagbarOpen


" autopep8
map <F11> :call FormartSrc()<CR>
"定义FormartSrc()
func! FormartSrc()
exec "w"
if &filetype == 'c'
exec "!astyle --style=ansi --one-line=keep-statements -a --suffix=none %"
elseif &filetype == 'cpp' || &filetype == 'hpp'
exec "r !astyle --style=ansi --one-line=keep-statements -a --suffix=none %> /dev/null 2>&1"
elseif &filetype == 'perl'
exec "!astyle --style=gnu --suffix=none %"
elseif &filetype == 'py'||&filetype == 'python'
exec "r !autopep8 -i --aggressive %"
elseif &filetype == 'java'
exec "!astyle --style=java --suffix=none %"
elseif &filetype == 'jsp'
exec "!astyle --style=gnu --suffix=none %"
elseif &filetype == 'xml'
exec "!astyle --style=gnu --suffix=none %"
endif
exec "e! %"
endfunc
"结束定义FormartSrc


" UltiSnips
let g:UltiSnipsSnippetDirectories=['UltiSnips', '../../mycoolsnippets']
"let g:UltiSnipsSnippetDirectories=['E:\Program Files\Vim\vimfiles\bundle\mycoolsnippets']
"let g:UltiSnipsDoHash=0

" Rope-vim
map <leader>j :RopeGotoDefinition<CR>

" Syntastic
map <leader><S-D> :SyntasticToggleMode<CR>
"exec SyntasticToggleMode
"map <F7> :SyntasticCheck<CR>
"let g:syntastic_python_checkers=['python', 'pep8', 'py3kwarn', 'flake8', 'pylama']
"let g:syntastic_python_checkers=['pylama']
let g:syntastic_python_checkers=['flake8']
let g:syntastic_python_flake8_ignore='E501'
let g:syntastic_auto_loc_list=1
"let g:syntastic_python_pylama_args='-l pep8,pep257,mccabe,pyflakes' ",pylint'
"let g:syntastic_python_pylama_ignore='C0110'
"let g:lint_ignore='C0110'

" 设置撤销文件 un~ 的保存位置
set undodir=d:\\Temp/vims/


" solarized
if has('gui_running')
    set background=light
else
    set background=dark
endif
"colorscheme solarized

colorscheme github


" 在每行前显示相对于光标所在的行的行号
" set rnu

" 设置换行格式为 unix
"autocmd FileType python setlocal fileformat=unix
autocmd FileType sh setlocal fileformat=unix


" ============= python-model ===============
let g:pymode_run = 0

let g:pymode_lint = 0
let g:pymode_lint_write = 0

let g:pymode_rope = 0

let g:pymode_motion = 0

let g:pymode_virtualenv = 0


" ========== indent-guides ========
let g:indent_guides_auto_colors = 0
nmap <silent> <Leader>ig <Plug>IndentGuidesToggle

" 显示一条竖线
set cc=80  " 在80行位置显示一条竖线


" ========== neosnippet ==========="
" Enable snipMate compatibility feature.
let g:neosnippet#enable_snipmate_compatibility = 1
" Tell Neosnippet about the other snippets
let g:neosnippet#snippets_directory='$VIM/vimfiles/bundle/vim-snippets/snippets'
let g:neosnippet#snippets_directory='$VIM/vimfiles/mycoolsnippets'


" =========== vimfiler ==========="
nmap <leader>tr :VimFilerExplorer<cr>
nmap <leader><S-T>r :VimFilerClose<cr>
"let NERDTreeWinPos='right'


" =========== UndoTree ==========="
nmap <leader>ut :UndotreeToggle<cr>
