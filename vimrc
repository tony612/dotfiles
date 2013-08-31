set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'
" My Bundles here:
"
" original repos on github

Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}

" synatax
Bundle 'tpope/vim-haml'
Bundle 'slim-template/vim-slim'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-bundler'
Bundle 'othree/html5.vim'
Bundle 'adimit/prolog.vim'
Bundle 'kchmck/vim-coffee-script'
Bundle 'guns/vim-clojure-static'
Bundle 'jeyb/vim-jst'
Bundle 'plasticboy/vim-markdown'
Bundle 'hallison/vim-ruby-sinatra'
Bundle 'vim-ruby/vim-ruby'
Bundle 'pangloss/vim-javascript'
Bundle 'vim-scripts/VimClojure'

" Tools
Bundle 'rking/ag.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-dispatch'

" Editing assist
Bundle 'godlygeek/tabular'
Bundle 'tpope/vim-endwise'
Bundle 'mattn/zencoding-vim'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-commentary'

" snip
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
Bundle "honza/vim-snippets"

Bundle 'tpope/vim-fireplace'
Bundle 'tpope/vim-classpath'

" Looks
Bundle 'Lokaltog/vim-powerline'

" vim-scripts repos
Bundle 'L9'
" Bundle 'FuzzyFinder'
" non github repos
" Bundle 'git://git.wincent.com/command-t.git'
" git repos on your local machine (ie. when working on your own plugin)
" Bundle 'file:///Users/gmarik/path/to/plugin'
" Comes first

" use pathogen
" call pathogen#infect()

syntax on

filetype plugin indent on

"Behaviors
set autowrite
set autochdir
set autoread "autoreload external modification
" jump to the last position when reopening a file
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Display extra whitespace
set list listchars=tab:»·,trail:·

set autoindent
set smartindent
set backspace=indent,eol,start "allow backspacing over everything in insert mode
set history=1000 "keep 50 lines of command line history
set incsearch
set mouse=a " use mouse in all modes
set novisualbell "Use visual bell instead of beeping.
set report=0 " always report number of lines changed
set ignorecase
set smartcase
set shortmess=atI " shorten messages to avoid 'press a key' prompt
set wildmenu " type :h and press <Tab> to look what happens
set wildignore+=*.swp,*.pyc,*.class
set tabstop=4
set textwidth=0
set shiftwidth=4
" tab
set expandtab
set sw=2
set ts=2
set smarttab

set nobackup       " no *~ files
set noswf          " no *.swap files

" Highlight 80 column and after 120
"highlight ColorColumn ctermbg=235 guibg=#2c2d27
hi ColorColumn guibg=lightyellow ctermbg=246
" .join(range(120,999),",")
let &colorcolumn="80"

" set undolevels=1000 "maximum number of changes that can be undone

" UI
set background=dark
colorscheme codeschool "desert
set number
set backspace=indent,eol,start
set whichwrap=<,>
set cin
set cino=:0g0(sus
set si
set et
set sts=2

set encoding=utf-8
set fileencodings=ucs-bom,utf-8,utf-16,cp9936,gb18030,big5,euc-jp,euc-kr,latin1
set gfn=Monaco:h15
" Fold
set foldmethod=syntax
set foldlevelstart=99
"
set ignorecase
" complate menu color
:highlight Pmenu guibg=black gui=bold
:highlight Pmenu ctermbg=238 gui=bold

" scroll
set so=7

" highlight indent
"let g:indent_guides_auto_colors = 0
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=black   ctermbg=2
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=darkgrey ctermbg=2
"let g:indent_guides_start_level = 2
"let g:indent_guides_guide_size = 1

" Highlight current line
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorcolumn
set cursorcolumn

"
"autocmd FileType make     set noexpandtab
"autocmd FileType python   set noexpandtab
"autocmd FileType eruby  set tabstop=2 shiftwidth=2
"autocmd FileType ruby,rdoc set tabstop=2 shiftwidth=2
"autocmd FileType html set tabstop=2 shiftwidth=2
"autocmd FileType javascript set tabstop=2 shiftwidth=2
"autocmd FileType coffee set tabstop=2 shiftwidth=2

"rails

" status line
set laststatus=2
" set statusline=%<%f\ %m%=\ %h%r\ %-19([%p%%]\ %3l,%02c%03V%)%y
" highlight StatusLine term=bold,reverse cterm=bold,reverse
" call Pl#Theme#InsertSegment('ws_marker', 'after', 'lineinfo')

" syntastic
"let g:syntastic_check_on_open=1
"let g:syntastic_echo_current_error=1
"let g:syntastic_error_symbol = '✗'
"let g:syntastic_warning_symbol = '⚠'
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_loc_list_height = 5
"let g:syntastic_enable_highlighting = 0
"" js
"let g:syntastic_enable_signs=1
""set statusline+=%#warningmsg#
""set statusline+=%{SyntasticStatuslineFlag()}
""set statusline+=%*
"let g:syntastic_mode_map = {'mode': 'active', 'active_filetypes': ['javascript'], 'passive_filetypes': ['ruby']}
"let g:syntastic_javascript_checker = 'jshint'

" CtrlP
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
"let g:ctrlp_working_path_mode = 'ra'

" fuzzyfinder
" map ff :FufCoverageFile<cr>
"let g:fuf_coveragefile_exclude = '\v\~$|\.(o|exe|dll|bak|orig|swp)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|(tmp|log|vendor)'
"let g:fuf_coveragefile_prompt = '=>'

" Strip trailing whitespace
function! <SID>StripTrailingWhitespaces()
  " Preparation: save last search, and cursor position.
  let _s=@/
  let l = line(".")
  let c = col(".")
  " Do the business:
  %s/\s\+$//e
  " Clean up: restore previous search history, and cursor position
  let @/=_s
  call cursor(l, c)
endfunction
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

" The silver searcher
let g:ackprg = 'ag --nogroup --nocolor --column'

" ctags
set tags=tags;
set autochdir

" tell vim to keep a backup file
set backup
" tell vim where to put its backup files
set backupdir=~/.vim/tmp
" tell vim where to put swap files
set dir=~/.vim/swaps

" clojure
let vimclojure#WantNailgun = 1
let vimclojure#HighlightBuiltins = 1 " Highlight Clojure's builtins
let vimclojure#ParenRainbow = 1 " Rainbow parentheses'!
let vimclojure#DynamicHighlighting = 1

" map
nnoremap <SPACE> :
