syntax enable
set background=dark
"colorscheme solarized
let mapleader=";"    "设置<leader>健。
set ai                      "自动缩进
set showmatch               "代码匹配
set laststatus=2            "总是显示状态行
set expandtab               "以下三个配置配合使用，设置tab和缩进空格数
set shiftwidth=4
set tabstop=4
set softtabstop=4     " 设置软制表符的宽度 
"set cursorline              "为光标所在行加下划线
"set backspace=2
set backspace=indent,eol,start  
"indent: 如果用了:set indent,:set ai 等自动缩进，想用退格键将字段缩进的删掉，必须设置这个选项。否则不响应。
"eol:如果插入模式下在行开头，想通过退格键合并两行，需要设置eol。
"start：要想删除此次插入前的输入，需设置这个。

set autowrite        " 自动把内容写回文件: 如果文件被修改过，在每个 :next、:rewind、:last、:first、:previous、:stop、:suspend、:tag、:!、:make、CTRL-] 和 CTRL-^命令时进行；用 :buffer、CTRL-O、CTRL-I、'{A-Z0-9} 或 `{A-Z0-9} 命令转到别的文件时亦然。

set ignorecase              "检索时忽略大小写
set hls                     "检索时高亮显示匹配项
set encoding=utf-8      "Vim 内部使用的字符编码方式。当我们设置了 encoding 之后，Vim 内部所有的 buffer、寄存器、脚本中的字符串等，全都使用这个编码。
set termencoding=utf-8  "Vim 用于屏幕显示的编码，在显示的时候，Vim 会把内部编码转换为屏幕编码，再用于输出。
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1 "按顺序使用 fileencodings 中的编码进行尝试解码，如果成功的话，就使用该编码方式进行解码，并将 fileencoding 设置为这个值
"set fileencoding=utf-8
""注意请勿打开这选项，这个是运行的时候使用该命令对文件进行编码转换的。
"set langmenu=zh_CN.UTF-8
"language message zh_CN.UTF-8
set helplang=cn             "帮助系统设置为中文
"set foldmethod=syntax       "代码折叠
set showmatch            "显示括号配对
set smartindent          "智能对齐
set cindent              "使用C语言的缩进方式
set autoindent             "自动缩进
set showmode             "显示当前工作模式
set ruler                "在vim窗口右下角显示光标位置
set mouse=a                 "启动鼠标功能
set number

"--命令行设置--
set showcmd            " 命令行显示输入的命令
set showmode        " 命令行显示vim当前模式


set nocompatible              " be iMproved
filetype off                  " required!


set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

cmap w!! w !sudo tee >/dev/null %

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

"Bundle 'Rip-Rip/clang_complete'
"let g:clang_use_library=1
"let g:clang_library_path='/Library/Developer/CommandLineTools/usr/lib/'


" My bundles here:
"
Bundle 'Valloric/YouCompleteMe'

let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
"Do not ask when starting vim
let g:ycm_confirm_extra_conf = 0
let g:syntastic_always_populate_loc_list = 1
"youcompleteme 默认tab s-tab 和自动补全冲突
"let g:ycm_key_list_select_completion=['<c-n>']
"let g:ycm_key_list_select_completion = ['<Down>']
"let g:ycm_key_list_previous_completion=['<c-p>']
"let g:ycm_key_list_previous_completion = ['<Up>']
let g:ycm_min_num_of_chars_for_completion=2
let g:ycm_autoclose_preview_window_after_insertion=1
let g:ycm_complete_in_comments=1
let g:ycm_complete_in_strings=1
let g:ycm_collect_identifiers_from_comments_and_strings=0
"nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
"nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>
nnoremap <leader>gd :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <C-]> :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <leader>jd :YcmCompleter GoTo<CR>

"读取文件目录插件
Bundle 'scrooloose/nerdtree'  
Bundle 'jistr/vim-nerdtree-tabs'
map <C-n> :NERDTreeToggle<CR>
let NERDTreeIgnore=[ '\.pyc$', '\.pyo$', '\.py\$class$', '\.obj$', '\.o$', '\.so$', '\.egg$', '^\.git$' ]
let g:nerdtree_tabs_no_startup_for_diff = 0
let g:nerdtree_tabs_open_on_gui_startup = 0

" .h文件与.c .cpp文件之间跳转。
Bundle 'a.vim'
nnoremap <C-h> :A<CR>
"gdb调试
Bundle 'vimgdb'
"注释插件
Bundle 'scrooloose/nerdcommenter'
"map <C-m> <plug>NERDCommenterInvert<CR>
"map [count]<C-m> <plug>NERDCommenterInvert<CR>
"s:CreateMaps('nx', 'Invert',     'Invert', 'ci')

"go 语言插件
Bundle 'dgryski/vim-godef'
Bundle 'Blackrush/vim-gocode'
Bundle 'majutsushi/tagbar'
"go 语言存盘自动格式化。
autocmd BufWritePre *.go :Fmt
Bundle 'fatih/vim-go'

"Bundle 'Superbil/llvm.vim'
"augroup filetype
  "au! BufRead,BufNewFile *.ll     set filetype=llvm
"augroup END

"augroup filetype
  "au! BufRead,BufNewFile *.td     set filetype=tablegen
"augroup END

"" LLVM Makefile highlighting mode
"augroup filetype
  "au! BufRead,BufNewFile *Makefile*     set filetype=make
"augroup END


Bundle 'kien/ctrlp.vim'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.dylib 
"let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

"Bundle 'Lokaltog/vim-powerline'
"let g:Powerline_symbols = 'fancy'
"
"
Bundle 'DoxygenToolkit.vim'
let g:DoxygenToolkit_briefTag_pre="@Synopsis  " 
let g:DoxygenToolkit_paramTag_pre="@Param " 
let g:DoxygenToolkit_returnTag="@Returns   " 
let g:DoxygenToolkit_blockHeader="--------------------------------------------------------------------------" 
let g:DoxygenToolkit_blockFooter="----------------------------------------------------------------------------" 
let g:DoxygenToolkit_authorName="Mathias Lorente" 
let g:DoxygenToolkit_licenseTag="My own license"  

Bundle 'airblade/vim-gitgutter'


"状态栏增强展示
Bundle 'bling/vim-airline'
" --- vim-airline
set ttimeoutlen=50
let g:airline_left_sep = ''
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_right_sep = ''
let g:airline_linecolumn_prefix = ''
let g:airline_linecolumn_prefix = ''
let g:airline_linecolumn_prefix = ''
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#syntastic#enabled = 0
let g:airline#extensions#tagbar#enabled = 1
let g:airline#extensions#csv#enabled = 0
let g:airline#extensions#hunks#enabled = 0
let g:airline#extensions#virtualenv#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_theme_patch_func = 'AirlineThemePatch'

function! AirlineInit()
    let g:airline_section_y = airline#section#create_right(['%v', '%l'])
    let g:airline_section_z = airline#section#create_right(['%P', '%L'])
endfunction
autocmd VimEnter * call AirlineInit()

function! AirlineThemePatch(palette)
    if g:airline_theme == "wombat"
        for colors in values(a:palette.inactive)
            let colors[3] = 235
        endfor
    endif
endfunction


"Bundle 'minibufexpl.vim'
"let g:miniBufExplMapWindowNavVim = 1 

" original repos on GitHub
" Bundle 'tpope/vim-fugitive'
" Bundle 'Lokaltog/vim-easymotion'
" Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" Bundle 'tpope/vim-rails.git'

" vim-scripts repos
" Bundle 'L9'
" Bundle 'FuzzyFinder'
" non-GitHub repos
" Bundle 'git://git.wincent.com/command-t.git'
" Git repos on your local machine (i.e. when working on your own plugin)
" Bundle 'file:///Users/gmarik/path/to/plugin'
" ...

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed.
