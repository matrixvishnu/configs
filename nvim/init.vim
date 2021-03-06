
set nocompatible
"Plugin manager"
call plug#begin('~/.vim/plugged')
  " UI related
  Plug 'chriskempson/base16-vim'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  " Better Visual Guide
  Plug 'Yggdroot/indentLine'
  "Align Plugin
  Plug 'vim-scripts/Align'
  " syntax check
  " Plug 'w0rp/ale'
  " Python Mode 
  " Python Mode For syntax highlight And Indent
  Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
  " Autocomplete
  Plug 'ncm2/ncm2'
  Plug 'zchee/deoplete-jedi'
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'davidhalter/jedi-vim'

 " Plug 'roxma/nvim-yarp'
 " Plug 'ncm2/ncm2-bufword'
 " Plug 'ncm2/ncm2-path'
 " Plug 'ncm2/ncm2-jedi'
  " Formater
  Plug 'Chiel92/vim-autoformat'
  "Auto close perenthesis quotes braces etc
  Plug 'jiangmiao/auto-pairs'
  Plug 'scrooloose/nerdcommenter'
  Plug 'scrooloose/nerdtree'
  Plug 'NLKNguyen/papercolor-theme'
  "Icons 
  Plug 'ryanoasis/vim-devicons'
  "Latex
  Plug 'lervag/vimtex'
  Plug 'dhruvasagar/vim-table-mode'
  Plug 'mboughaba/i3config.vim'




  call plug#end()
filetype plugin indent on
syntax on
set hidden
" Better command-line completion
set wildmenu
" Show partial commands in the last line of the screen
set showcmd
" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
set hlsearch
" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase
" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start
" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent
" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler
" Always display the status line, even if only one window is displayed
set laststatus=2
" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm
 
" Use visual bell instead of beeping when doing something wrong
set visualbell
 
" And reset the terminal code for the visual bell. If visualbell is set, and
" this line is also included, vim will neither flash nor beep. If visualbell
" is unset, this does nothing.
set t_vb=
 
" Enable use of the mouse for all modes
set mouse=a
" Display line numbers on the left
:set number relativenumber
:set nu rnu

" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200
" Use <F11> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F11>
map Y y$
" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search
nnoremap <C-L> :nohl<CR><C-L>
" python2 execution
nnoremap <F5> :echo system('python2 "' . expand('%') . '"')<cr>

"------------------------------------------------------------
"Auto Close Perenthasis"
"inoremap {      {}<Left>
"inoremap {<CR>  {<CR>}<Esc>O
"inoremap {{     {
"inoremap {}     {}
"inoremap        (  ()<Left>
"inoremap <expr> )  strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"
" Tab and Indent configuration
set expandtab
set tabstop=4
set shiftwidth=4
" vim-autoformat
noremap <F3> :Autoformat<CR>
"deoplete auto complete
let g:deoplete#enable_at_startup = 1
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif


" NCM2
" Ale
" let g:ale_lint_on_enter = 0
" let g:ale_lint_on_text_changed = 'never'
" let g:ale_echo_msg_error_str = 'E'
" let g:ale_echo_msg_warning_str = 'W'
" let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
" let g:ale_linters = {'python': ['flake8']}

"Nerd Tree
let g:nerdtree_tabs_open_on_console_startup=1
let g:nerdtree_tabs_open_on_gui_startup = 1
"airline statusline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

" Latex PDF previw and compilation
let g:vimtex_view_general_viewer = 'zathura'
" custom bindings 
" To map <Esc> to exit terminal-mode:
    :tnoremap <Esc> <C-\><C-n>
" To use `ALT+{h,j,k,l}` to navigate windows from any mode:
    :tnoremap <A-h> <C-\><C-N><C-w>h
    :tnoremap <A-j> <C-\><C-N><C-w>j
    :tnoremap <A-k> <C-\><C-N><C-w>k
    :tnoremap <A-l> <C-\><C-N><C-w>l
    :inoremap <A-h> <C-\><C-N><C-w>h
    :inoremap <A-j> <C-\><C-N><C-w>j
    :inoremap <A-k> <C-\><C-N><C-w>k
    :inoremap <A-l> <C-\><C-N><C-w>l
    :nnoremap <A-h> <C-w>h
    :nnoremap <A-j> <C-w>j
    :nnoremap <A-k> <C-w>k
    :nnoremap <A-l> <C-w>l
"Theme
colorscheme corporation_mod3
"highlight Comment cterm=bold

"UNICODE 8 SUPPORT
"set encoding=utf-8
"PYHON HIGHLIGHT
hi! Normal ctermbg=NONE guibg=NONE
hi! NonText ctermbg=NONE guibg=NONE

let python_highlight_all=1
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
if (has("termguicolors"))
    set t_8f=\[[38;2;%lu;%lu;%lum
    set t_8b=\[[48;2;%lu;%lu;%lum
    set termguicolors
endif

set splitbelow
set splitright

