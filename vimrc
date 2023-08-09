set relativenumber
filetype plugin indent on
syntax on
"set cursorline
set showmatch


" osx fix for italic control codes
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"

set modelines=10
noremap  <Up> ""
noremap! <Up> <Esc>
noremap  <Down> ""
noremap! <Down> <Esc>
noremap  <Left> ""
noremap! <Left> <Esc>
noremap  <Right> ""
noremap! <Right> <Esc>

"au BufWinLeave * silent! mkview
"au BufWinEnter * silent! loadview

set directory=~/.vim/swap//
set backupdir=~/.vim/backup//
set undodir=~/.vim/undo//
"set spell
set spelllang=en
set spellfile=~/.vim/spellfile.utf-8.add
set backup
set writebackup
set undofile

set showbreak=\ \ \ \
set linebreak

let mapleader=","
"set tw=76
set encoding=utf-8
setglobal fileencoding=utf-8
set nobomb
set hidden
set termencoding=utf-8
set fileencodings=utf-8,iso-8859-15
set backspace=indent,eol,start
set guifont=Monaco:h16
set modeline
set cmdheight=3
set laststatus=2
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set smarttab
set expandtab
set scrolloff=32
set sidescrolloff=3
set laststatus=2
set ruler

autocmd FileType make setlocal noexpandtab
autocmd FileType markdown setlocal spell
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown
autocmd BufNewFile,BufRead *.json set ft=javascript
au BufRead,BufNewFile *.go set filetype=go


set ttyfast
set showcmd
set nocompatible
set wildignore+=*.pyc
set ignorecase
set smartcase
inoremap jj <Esc>
map N Nzz
map n nzz
map <s-tab> <c-w><c-w>
colorscheme dark-meadow
hi CursorLine term=none cterm=none ctermbg=none
set t_Co=6
"set foldmethod=indent
"set foldminlines=5
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use
nnoremap <silent> <Space> @=(foldlevel('.')?'za':'l')<CR>
vnoremap <Space> zf

nnoremap <silent> <Tab> :bn<CR>
nnoremap <silent> <Backspace> :bp<CR>
nnoremap <silent> <Leader><Enter> :ls<CR>

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

let python_no_builtin_highlight = 1
let python_no_doctest_code_highlight = 1
let python_no_doctest_highlight = 1
let python_no_exception_highlight = 1
let python_no_number_highlight = 1
let python_space_error_highlight = 1
let python_highlight_all = 1

let g:flake8_show_in_gutter=1  " show
let vimplug_exists=expand('~/.vim/autoload/plug.vim')

let g:vim_bootstrap_langs = "c,go,javascript,python"
let g:vim_bootstrap_editor = "vim"              " nvim or vim

if !filereadable(vimplug_exists)
      if !executable("curl")
              echoerr "You have to install curl or first install vim-plug yourself!"
                  execute "q!"
                    endif
                      echo "Installing Vim-Plug..."
                        echo ""
                          silent exec "!\curl -fLo " . vimplug_exists . " --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
                            let g:not_finish_vimplug = "yes"

                              autocmd VimEnter * PlugInstall
                          endif


call plug#begin(expand('~/.vim/plugged'))

"Go Lang Bundle
Plug 'fatih/vim-go', {'do': ':GoInstallBinaries'}

"Javascript Bundle
Plug 'jelera/vim-javascript-syntax'

"Python Bundle
Plug 'raimon49/requirements.txt.vim', {'for': 'requirements'}

call plug#end()


