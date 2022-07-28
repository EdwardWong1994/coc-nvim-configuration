
:"Options
set encoding=utf-8
set modelines=0
set backspace=2
set nowritebackup
set nocp
set clipboard+=unnamed
set nu
set history=100
set autoread
set nobackup
set nowb
set noswapfile
set mouse=a
set selection=exclusive
set selectmode=mouse,key
set cursorline
set novisualbell
set laststatus=2
set showcmd
set ruler
set cmdheight=3
set complete+=kspell
set completeopt=menuone,longest
"set completeopt=longest,menu
set shortmess+=c
set showmatch
set ignorecase
set hlsearch
set incsearch
set autoindent
set smartindent
set cindent
set tabstop=4
set wildmenu
set shellslash
set hidden
set updatetime=300

if has("nvim-0.5.0") || has("patch-8.1.1564")
	set signcolumn=number
else
	set signcolumn=yes
endif
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
set foldenable

"Load Plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
"Plugin 'xuhdev/vim-latex-live-preview'
Plugin 'lervag/vimtex'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'scrooloose/nerdtree'
Plugin 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'ryanoasis/vim-devicons'
Plugin 'airblade/vim-gitgutter'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'prettier/vim-prettier', { 'do': 'yarn install' }
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'yaegassy/coc-pylsp', {'do': 'yarn install --frozen-lockfile'}
Plugin 'morhetz/gruvbox'
Plugin 'HerringtonDarkholme/yats.vim'
Plugin 'neoclide/coc-snippets'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'mzlogin/vim-markdown-toc'
Plugin 'iamcco/markdown-preview.nvim'
Plugin 'ferrine/md-img-paste.vim'
Plugin 'junegunn/goyo.vim'
Plugin 'mbajobue/scim-latex-tables'
call vundle#end()

colorscheme gruvbox
" Plugin configuration
filetype plugin indent on
syntax on

"Plugin configuration

let g:UltiSnipsExpandTrigger = "<Tab>"
let g:UltiSnipsListSnippets = "<c-Tab>"
let g:UltiSnipsJumpForwardTrigger = "<Tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
let g:UltiSnipsSnippetsDirectories=[$HOME.'/.vim/bundle/vim-snippets/UltiSnips', "~/.vim/UltiSnips"]

let g:livepreview_previewer='skim'
let g:livepreview_engine='latexmk'

let g:vimtex_view_method = 'skim'
let g:vimtex_quickfix_mode = 1

let g:vim_markdown_math=1

let g:mdip_imgdir='~/Desktop/screenshot/markdown'
let g:mdip_imgname='image'

let g:mkdp_auto_start = 1
let g:mkdp_refresh_slow = 0
let g:mkdp_command_for_global = 1
let g:mkdp_browser = '/Applications/Google Chrome.app'
let g:mkdp_markdown_css='~/Desktop/WCC/markdown/github-css-sytle-markdown/github-markdown-css'

let g:vim_markdown_folding_level=6
autocmd Filetype markdown nmap <C-s> <Plug>MarkdownPreview
autocmd Filetype markdown nmap <C-z> <Plug>MarkdownPreviewStop
autocmd Filetype markdown map <C-q> <Plug>MarkdownPreviewToggle
autocmd Filetype markdown nnoremap <silent> <C-w>:call mdip#MarkdownClipboardImage()<CR>F%i
autocmd Filetype markdown noremap <buffer> <C-x>  :GenTocMarked
autocmd Filetype markdown  nnoremap <silent> <C-c> :UpdateToc

let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:NERDTreeGitStatusWithFlags = 1
let g:NERDTreeGitStatusNodeColorization = 1

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
let g:NERDTreeGitStatusWithFlags = 1
let g:NERDTreeIgnore = ['^node_modules$']



function! IsNERDTreeOpen()
  return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
endfunction

function! SyncTree()
	if &modifiable && IsNERDTreeOpen() && strlen(expand('%')) > 0 && !&diff
		NERDTreeFind
		wincmd p
	endif
endfunction

autocmd BufEnter * call SyncTree()
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

let g:prettier#autoformat = 1
command! -nargs=0 Prettier :CocCommand prettier.formatFile

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:coc_snippet_next='<tab>'


let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint',
  \ 'coc-prettier',
  \ 'coc-json',
  \ 'coc-vimlsp',
  \ 'coc-css',
  \ 'coc-diagnostic',
  \ 'coc-explorer',
  \ 'coc-flutter-tools',
  \ 'coc-gitignore',
  \ 'coc-html',
  \ 'coc-lists',
  \ 'coc-python',
  \ 'coc-syntax',
  \ 'coc-todolist',
  \ 'coc-translator',
  \ 'coc-tslint-plugin',
  \ 'coc-vetur',
  \ 'coc-yaml',
  \ 'coc-yank',
  \ 'coc-translator',
  \ 'coc-vimtex'
  \]


command! -nargs=0 Format :call CocAction('format')
command! -nargs=? Fold :call     CocAction('fold', <f-args>)
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')




augroup mygroup
	autocmd!
	autocmd CursorHold * silent call CocActionAsync('highlight')
	autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
	autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Autocommands

autocmd BufWrite /private/tmp/crontab.* set nowritebackup nobackup
autocmd BufWrite /private/etc/pw.* set nowritebackup nobackup
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType java set omnifunc=javacomplete#Complet


"Configuration for options and similar
let skip_defaults_vim=1
let g:pydiction_location = '/Users/wangchenchen/.vim/tools/pydiction/complete-dict'
let g:pydiction_menu_height=20


inoremap jk <ESC>
nmap <C-f> :NERDTreeToggle<CR>
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
nmap tt :TTemplate
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle
inoremap <expr> <Down>  pumvisible() ? "<C-n>" :"<Down>"
inoremap <expr> <Up>  pumvisible() ? "<C-p>" : "<Up>"
inoremap <expr> <Right>  pumvisible() ? "<C-y>" : "<Right>"
inoremap <expr> <CR> pumvisible() ? "<C-y>" :"<CR>"
inoremap <expr> <Left>  pumvisible() ? "<C-e>" : "<Left>"

inoremap <silent><expr> <TAB>
          \ pumvisible() ? "\<C-n>" :
          \CheckBackspace()?"\<TAB>":
          \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"


function! s:CheckBackspace() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1]  =~# '\s'
endfunction

noremap <silent><expr> <c-o> coc#refresh()
if has('nvim')
	inoremap <silent><expr> <c-space> coc#refresh()
else
	inoremap <silent><expr> <c-@> coc#refresh()
end



"mapping

inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nnoremap <silent> K :call <SID>ShowDocumentation()<CR>



function! ShowDocumentation()
	if CocAction('hasProvider', 'hover')
		call CocActionAsync('doHover')
	else
		call feedkeys('K', 'in')
	endif
endfunction




nnoremap aa :CocCommand explorer<CR>
nmap <leader>rn <Plug>(coc-rename)
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>ac  <Plug>(coc-codeaction)
nmap <leader>qf  <Plug>(coc-fix-current)
nmap <leader>cl  <Plug>(coc-codelens-action)
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)
nmap <silent> <C-d> <Plug>(coc-range-select)
xmap <silent> <C-d> <Plug>(coc-range-select)
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

autocmd FileType tex inoremap ,alpha    \alpha
autocmd FileType tex inoremap ,beta     \beta
autocmd FileType tex inoremap ,gamma    \gamma
autocmd FileType tex inoremap ,delta    \delta
autocmd FileType tex inoremap ,del      \Delta
autocmd FileType tex inoremap ,epsilon  \epsilon
autocmd FileType tex inoremap ,zeta     \zeta
autocmd FileType tex inoremap ,eta      \eta
autocmd FileType tex inoremap ,theta    \theta
autocmd FileType tex inoremap ,kappa    \kappa
autocmd FileType tex inoremap ,lambda   \lambda
autocmd FileType tex inoremap ,mu       \mu
autocmd FileType tex inoremap ,nu       \nu
autocmd FileType tex inoremap ,pi       \pi
autocmd FileType tex inoremap ,rho      \rho
autocmd FileType tex inoremap ,sigma    \sigma
autocmd FileType tex inoremap ,tau      \tau
autocmd FileType tex inoremap ,phi      \phi
autocmd FileType tex inoremap ,Phi      \Phi
autocmd FileType tex inoremap ,psi      \psi
autocmd FileType tex inoremap ,omega    \omega
