
"Configuration file for vim
 "Set internal encoding of vim, not needed on neovim, since coc.nvim using some
 "unicode characters in the file autoload/float.vim	
set encoding=utf-8

set modelines=0		" CVE-2007-2438
" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing
" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup
set nobackup	
set nowritebackup	
let skip_defaults_vim=1

let g:tex_flavor='latex'
"let g:vimtex_compiler_method='latexrun'
"set grepprg =grep\ -nH\ $*
"let g: tex_falvor='latex'
"let g:Tex_DefaultTargetFormat='pdf'
let g:vimtex_view_method='zathura'
let g:latex_view_general_viewer='zathura'
let g:vimtex_quickfix_mode =1
"let g:vim_markdown_folding_disabled=1
let g:pydiction_location = '/Users/wangchenchen/.vim/tools/pydiction/complete-dict'
let g:pydiction_menu_height=20

syntax on

colorscheme desert

"打开文件类型检测功能
filetype on

"不同文件类型采用不同缩进
filetype indent on

"允许使用插件
filetype plugin on
filetype plugin indent on
"关闭vi模式
set nocp

"与windows共享剪贴板
set clipboard+=unnamed

"取消VI兼容，VI键盘模式不易用
set nocompatible

"显示行号, 或set number
set nu


"历史命令保存行数 
set history=100 

"当文件被外部改变时自动读取
set autoread 

"取消自动备份及产生swp文件
set nobackup
set nowb
set noswapfile

"允许使用鼠标点击定位
set mouse=a


"允许区域选择
set selection=exclusive
set selectmode=mouse,key

"高亮光标所在行
set cursorline

"取消光标闪烁
set novisualbell

"总是显示状态行
set laststatus=2

"状态栏显示当前执行的命令
set showcmd

"标尺功能，显示当前光标所在行列号
set ruler

"设置命令行高度为3
set cmdheight=3

"粘贴时保持格式
" set paste
" 为autocomplete做配置
set complete+=kspell
set completeopt=menuone,longest
set shortmess+=c
"高亮显示匹配的括号
set showmatch

"在搜索的时候忽略大小写
set ignorecase
 
"高亮被搜索的句子
set hlsearch
 
"在搜索时，输入的词句的逐字符高亮（类似firefox的搜索）
set incsearch

"继承前一行的缩进方式，特别适用于多行注释
set autoindent

"为C程序提供自动缩进
set smartindent

"使用C样式的缩进
set cindent

"制表符为4
set tabstop=4

"自动补全
"filetype plugin indent on
set completeopt=longest,menu

"自动补全命令时候使用菜单式匹配列表
set wildmenu
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType java set omnifunc=javacomplete#Complet


filetype plugin indent on    " required
syntax enable
set nocompatible              " be iMproved, required
"filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
" 下面是相关的配置信息
let g:UltiSnipsExpandTrigger = "<Tab>"
let g:UltiSnipsListSnippets = "<c-Tab>"
let g:UltiSnipsJumpForwardTrigger = "<Tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
"let g:UltiSnipsSnippetsDirectories=['UltiSnips',]
"let g:UltiSnipsSnippetsDir='~/.vim/UltiSnips'
""let g:UltiSnipsUsePythonVersion=2

"" If you want :UltiSnipsEdit to split your window.
"let g:UltiSnipsEditSplit="vertical"
"let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/UltiSnips']
let g:UltiSnipsSnippetsDirectories=[$HOME.'/.vim/bundle/vim-snippets/UltiSnips', "~/.vim/UltiSnips"]
"Plugin 'vim-latex/vim-latex'
" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
"filetype plugin on
" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
set shellslash

" OPTIONAL: This enables automatic indentation as you type.
"filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'lervag/vimtex'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'scrooloose/nerdtree'

" neocomplete
"Plugin 'Shougo/neocomplete.vim'
"Plugin 'vim-scripts/AutoComplpop'
"let g:acp_enableAtStartUp=1
"let g:acp_behaviourKeywordLength=1
"let g:AutoCompiPop_MappingDriven=1

" COC
Plugin 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
"Plugin 'neoclide/coc.nvim', {'branch': 'release'}
"Plugin 'preservim/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'ryanoasis/vim-devicons'
Plugin 'airblade/vim-gitgutter'
Plugin 'ctrlpvim/ctrlp.vim' " fuzzy find files
Plugin 'scrooloose/nerdcommenter'
Plugin 'prettier/vim-prettier', { 'do': 'yarn install' }

Plugin 'christoomey/vim-tmux-navigator'
Plugin 'yaegassy/coc-pylsp', {'do': 'yarn install --frozen-lockfile'}

Plugin 'morhetz/gruvbox'

Plugin 'HerringtonDarkholme/yats.vim' " TS Syntax
Plugin 'neoclide/coc-snippets'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
let g:vim_markdown_math=1
Plugin 'mzlogin/vim-markdown-toc'
"let g:vmt_auto_update_on_save=1
Plugin 'iamcco/markdown-preview.nvim'
Plugin 'ferrine/md-img-paste.vim'
Plugin 'junegunn/goyo.vim'
"Plugin 'junegunn/limelight.vim'
" 设置默认储存文件夹
let g:mdip_imgdir='~/Desktop/screenshot/markdown'
"设置默认图片名称
let g:mdip_imgname='image'


"All of your Plugins must be added before the following line
call vundle#end()            " required

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
inoremap jk <ESC> 
nmap <C-f> :NERDTreeToggle<CR>

" Shortcutting for split navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
nmap tt :TTemplate 
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle

let g:NERDTreeGitStatusWithFlags = 1
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:NERDTreeGitStatusNodeColorization = 1
"let g:NERDTreeColorMapCustom = {
    ""\ "Staged"    : "#0ee375",  
    ""\ "Modified"  : "#d9bf91",  
    ""\ "Renamed"   : "#51C9FC",  
    ""\ "Untracked" : "#FCE77C",  
    ""\ "Unmerged"  : "#FC51E6",  
    ""\ "Dirty"     : "#FFBD61",  
    ""\ "Clean"     : "#87939A",   
    ""\ "Ignored"   : "#808080"   
    ""\ }                     

let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }

inoremap <expr> <Down>  pumvisible() ? "<C-n>" :"<Down>"
inoremap <expr> <Up>  pumvisible() ? "<C-p>" : "<Up>"
" Select the complete menu item like CTRL+y would.
inoremap <expr> <Right>  pumvisible() ? "<C-y>" : "<Right>"
inoremap <expr> <CR> pumvisible() ? "<C-y>" :"<CR>"
" Cancel the complete menu item like CTRL+e would.
inoremap <expr> <Left>  pumvisible() ? "<C-e>" : "<Left>"
" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" latex snippet
autocmd FileType tex inoremap ,alpha 	\alpha
autocmd FileType tex inoremap ,beta  	\beta
autocmd FileType tex inoremap ,gamma 	\gamma
autocmd FileType tex inoremap ,delta 	\delta
autocmd FileType tex inoremap ,del 	\Delta
autocmd FileType tex inoremap ,epsilon	\epsilon
autocmd FileType tex inoremap ,zeta	\zeta
autocmd FileType tex inoremap ,eta	\eta
autocmd FileType tex inoremap ,theta	\theta
autocmd FileType tex inoremap ,kappa	\kappa
autocmd FileType tex inoremap ,lambda	\lambda
autocmd FileType tex inoremap ,mu	\mu
autocmd FileType tex inoremap ,nu	\nu
autocmd FileType tex inoremap ,pi	\pi
autocmd FileType tex inoremap ,rho	\rho
autocmd FileType tex inoremap ,sigma	\sigma
autocmd FileType tex inoremap ,tau	\tau
autocmd FileType tex inoremap ,phi	\phi
autocmd FileType tex inoremap ,Phi	\Phi
autocmd FileType tex inoremap ,psi	\psi
autocmd FileType tex inoremap ,omega	\omega

let g:NERDTreeGitStatusWithFlags = 1

let g:NERDTreeIgnore = ['^node_modules$']

" vim-prettier
"let g:prettier#quickfix_enabled = 0
"let g:prettier#quickfix_auto_focus = 0
" prettier command for coc
command! -nargs=0 Prettier :CocCommand prettier.formatFile
" run prettier on save
let g:prettier#autoformat = 1
"autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync


" ctrlp
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']


" sync open file with NERDTree
" " Check if NERDTree is open or active
function! IsNERDTreeOpen()
  return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
endfunction

" Call NERDTreeFind iff NERDTree is active, current window contains a modifiable
" file, and we're not in vimdiff
function! SyncTree()
  if &modifiable && IsNERDTreeOpen() && strlen(expand('%')) > 0 && !&diff
    NERDTreeFind
    wincmd p
  endif
endfunction

" Highlight currently open buffer in NERDTree
autocmd BufEnter * call SyncTree()

" coc config
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint',
  \ 'coc-prettier',
  \ 'coc-json',
   \ 'coc-vimlsp',
 \'coc-css',
 \'coc-diagnostic',
 \'coc-explorer',
 \'coc-flutter-tools',
 \'coc-gitignore',
 \'coc-html',
 \'coc-lists',
 \'coc-python',
 \'coc-syntax',
 \'coc-todolist',
 \'coc-translator',
 \'coc-tslint-plugin',
 \'coc-vetur',
 \'coc-yaml',
 \'coc-yank',
 \'coc-translator'
  \ ]
" from readme
" if hidden is not set, TextEdit might fail.
set hidden " Some servers have issues with backup files, see #649 set nobackup set nowritebackup " Better display for messages set cmdheight=2 " You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
	  \ pumvisible() ? "\<C-n>" :
	  \CheckBackspace()?"\<TAB>":
	  \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
let g:coc_snippet_next='<tab>'

" Use <c-space> to trigger completion.
 inoremap <silent><expr> <c-o> coc#refresh()

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif
" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
"inoremap  <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction


" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')
if has("nvim-0.5.0") || has("patch-8.1.1564")
		" Recently vim can merge signcolumn and number column into one
		set signcolumn=number
else
		set signcolumn=yes
endif


" Symbol renaming.

nmap <leader>rn <Plug>(coc-rename)
nnoremap aa :CocCommand explorer<CR>

" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)


" Run the Code Lens action on the current line.
nmap <leader>cl  <Plug>(coc-codelens-action)

" Create mappings for function text object, requires document symbols feature of languageserver.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)


" Use <C-d> for select selections ranges, needs server support, like: coc-tsserver, coc-python
nmap <silent> <C-d> <Plug>(coc-range-select)
xmap <silent> <C-d> <Plug>(coc-range-select)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}


" Using CocList
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>
colorscheme gruvbox

" Setting for markdown
"
" set to 1, nvim will open the preview window after entering the markdown
" buffer
" " default: 0
 let g:mkdp_auto_start = 1 
"
" " set to 1, the nvim will auto close current preview window when change
" " from markdown buffer to another buffer
" " default: 1
" let g:mkdp_auto_close = 1
"
" " set to 1, the vim will refresh markdown when save the buffer or
" " leave from insert mode, default 0 is auto refresh markdown as you edit or
" " move the cursor
" " default: 0
 let g:mkdp_refresh_slow = 0"
" " set to 1, the MarkdownPreview command can be use for all files,
" " by default it can be use in markdown file
" " default: 0
 let g:mkdp_command_for_global = 1 
"
" " set to 1, preview server available to others in your network
" " by default, the server listens on localhost (127.0.0.1
" ) default: 0
" let g:mkdp_open_to_the_world = 0"
"
" specify browser to open preview page
" " for path with space
" " valid: `/path/with\ space/xxx`
" " invalid: `/path/with\\ space/xxx`
" " default: ''
 let g:mkdp_browser = '/Applications/Google Chrome.app'
"
" " set to 1, echo preview page url in command line when open preview page
" " default is 0
" let g:mkdp_echo_preview_url = 0
"
autocmd Filetype markdown nmap <C-s> <Plug>MarkdownPreview
autocmd Filetype markdown nmap <C-z> <Plug>MarkdownPreviewStop
autocmd Filetype markdown map <C-q> <Plug>MarkdownPreviewToggle

"设置快捷键
autocmd Filetype markdown nnoremap <silent> <C-w>:call mdip#MarkdownClipboardImage()<CR>F%i

 autocmd Filetype markdown noremap <buffer> <C-x>  :GenTocMarked

autocmd Filetype markdown  nnoremap <silent> <C-c> :UpdateToc


" iamcco/markdown-preview.nvim

let g:mkdp_markdown_css='~/Desktop/WCC/markdown/github-css-sytle-markdown/github-markdown-css'
"let g:vim_markdown_folding_disabled=1
"To enable/disable folding use Vim's standard folding configuration.
set foldenable	
let g:vim_markdown_folding_level=6



"set configuration for latex
"function ComplieWithXeTeX()
	"let g:Tex_CompileRule_pdf = 'latexmk -pdf -pvc  $*'
"endfunction
"map <Leader>lx :<C-U>call ComplieWithXeTeX()<CR>

"function CleanTempFiles()
	"execute '!latexmk -c'
"endfunction
"map <Leader>lc :<C-U>call CleanTempFiles()<CR>
