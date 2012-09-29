""""""""""""""""""
"	psic Setup
""""""""""""""""

set nocompatible      " Use vim, no vi defaults
set number            " Show line numbers
syntax enable         " Turn on syntax highlighting allowing local overrides
set encoding=utf-8    " Set default encoding to UTF-8


"""""""""""""""
"" Whitespace
"""""""""""""""

set nowrap                            " don't wrap lines
set tabstop=2                         " a tab is two spaces
set shiftwidth=2                      " an autoindent (with <<) is two spaces
set expandtab                         " use spaces, not tabs
set list listchars=tab:\ \ ,trail:.   " a tab should display as "  ", trailing whitespace as "."
set backspace=indent,eol,start        " backspace through everything in insert mode
set whichwrap+=<,>,h,l,[,]            "allow bs, del to cross lines


"""""""""""""""
"" Searching
"""""""""""""""

set nohlsearch  " Don't highlight matches
set incsearch   " incremental searching
set ignorecase  " searches are case insensitive...
set smartcase   " ... unless they contain at least one capital letter

" Toggle search highlighting
map <leader><space> :set hlsearch! hlsearch?<CR>


""""""""""""""""""""
"" Tab Completion
""""""""""""""""""""

" Disable output and VCS files
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.class,.svn,*.gem

" Disable archive files
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz

" Ignore bundler and sass cache
set wildignore+=vendor/gems/*,vendor/cache/*,.bundle/*,.sass-cache/*,doc/**,tmp/**

""""""""""""""""""""""""""""
"" Undo and command history
""""""""""""""""""""""""""""
set undofile
set undoreload=10000
set history=1000

" Undo files
set undodir=~/.vim/tmp/undo//

set nobackup
set nowritebackup
set noswapfile

"""""""""""""""
"" Clipboard
"""""""""""""""
set clipboard=unnamed

"""""""""""""""
"" Status bar
"""""""""""""""

set laststatus=2  " always show the status bar
set showmode
set shortmess=atI " Shortens messages to avoid 'press a key' prompt

if has("statusline") && !&cp
  
  " Start the status line
  set statusline=%f\ %m\ %r
  
  " Finish the statusline
  set statusline+=\ \ Line:%l/%L[%p%%]
  set statusline+=\ \ Col:%v
  set statusline+=\ \ Buf:#%n
  set statusline+=\ \ [%b][0x%B]
  
  " Add fugitive
  set statusline+=\ \ %{fugitive#statusline()}
endif

"""""""""""""""""""""""
"" Visual feedback
"""""""""""""""""""""""

set scrolloff=3       " Always show at least three lines below cursor
set mat=3             " Blink matching brackets for 3 tenths of a second
set visualbell t_vb=  " No Noise or bell
set foldmethod=syntax

""""""""""""""""""""""
"" Vundle
""""""""""""""""""""""
filetype off

set rtp+=~/.vim/bundle/vundle
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
Bundle 'tpope/vim-rails.git'
Bundle 'vim-ruby/vim-ruby'
Bundle 'nathanaelkane/vim-indent-guides'
let g:indent_guides_enable_on_vim_startup = 0
Bundle 'ecomba/vim-ruby-refactoring'


Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-repeat'
Bundle 'kchmck/vim-coffee-script'
Bundle 'tfnico/vim-gradle'
Bundle 'vim-scripts/groovy.vim'
Bundle "distributedlife/vim-javascript"
Bundle 'vim-scripts/IndentAnything'
Bundle 'vim-scripts/jsbeautify'
Bundle 'joestelmach/lint.vim'
Bundle 'claco/jasmine.vim'
Bundle 'nono/github_vim_theme'
Bundle 'groenewege/vim-less'

" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'Haml'
Bundle 'less'
Bundle 'Better-Javascript-Indentation'
" Bundle 'minibufexplorerpp'
Bundle 'taglist.vim'
Bundle 'surround.vim'
Bundle 'The-NERD-tree'
" non github repos
Bundle 'git://git.wincent.com/command-t.git'
" ...





"""""""""""""""""
"" File Types
"""""""""""""""""

" Turn on filetype plugins
filetype plugin indent on

" Remember last location in file, but not for commit messages.
" see :help last-position-jump
au BufReadPost * if &filetype !~ '^git\c' && line("'\"") > 0 && line("'\"") <= line("$")
  \| exe "normal! g`\"" | endif

" In Makefiles, use real tabs, not tabs expanded to spaces
au FileType make set noexpandtab

" Setup JSON files
au BufNewFile,BufRead *.json set ft=json

" make Python follow PEP8 ( http://www.python.org/dev/peps/pep-0008/ )
au FileType python set softtabstop=4 tabstop=4 shiftwidth=4 textwidth=79

" Less
au BufNewFile,BufRead *.less set filetype=less

" Add indent stuff for scheme files
au filetype lisp,scheme,art setlocal equalprg=~/.vim/janus-tools/scheme-indent/scmindent.scm

" Change tab width for markdown
au FileType markdown set softtabstop=4 tabstop=4 shiftwidth=4

" Highlight VCS conflict markers
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'



"Higlight current line only in insert mode
autocmd InsertLeave * set nocursorline
autocmd InsertEnter * set cursorline

"Highlight cursor
highlight CursorLine ctermbg=LightGrey cterm=NONE



" Coffee folding
au BufNewFile,BufReadPost *.js setl foldmethod=indent nofoldenable
au BufNewFile,BufReadPost *.coffee setl foldmethod=indent nofoldenable

" RSPEC
filetype plugin indent on     " required! 
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
