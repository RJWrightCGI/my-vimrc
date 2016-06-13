" UI Config
set number " show line numbers
set showcmd " show command in bottom bar
set cursorline " highlight current line
set wildmenu " visual autocomplete for command menu
set showmatch " highlight matching [{()}]
set tabstop=4 " number of visual spaces per tab when reading in a file
set softtabstop=4 " number of spaced in tab when editing
let mapleader = "," " change leader key to comma instead of backspace
set scrolloff=5 " When possible have 5 lines showing above/below the cursor
" jk is escape
inoremap jk <esc>
nnoremap <leader>t :tabnew<CR>
" shortcut to edit vimrc from vim
nnoremap <leader>ev :tabnew $MYVIMRC<CR>

"Pathogen
execute pathogen#infect()

syntax on
filetype plugin indent on

" Set Colorscheme
syntax enable
set background=dark
let g:solarized_visibility = "high"
let g:solarized_termcolors = 256
colorscheme solarized

" Searching
set incsearch " search as characters are entered
set hlsearch " highlight matches
nnoremap <leader><space> : nohlsearch<CR>
noremap n nzz
noremap N Nzz

" Use 256 colours (Use this setting only if your terminal supports 256 colours)
"if !has('gui_running')
"	set t_Co=256
"endif

" Always show statusline
set laststatus=2

"#### Plugins #####

"Lightline config
let g:lightline = {
	\ 'colorscheme': 'wombat',
	\ }

"NERDTree config
"Automatically open NERDTree if no file is specified on Vim startup
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"Open NERDTree with Ctrl+n
map <C-n> :NERDTreeToggle<CR>

"Easymotion config
let g:EasyMotion_do_mapping = 0 " Disable default mappings
let g:Easymotion_smartcase = 1 " Turn on case insensitivity

" Jump anywhere you want
nmap s <Plug>(easymotion-overwin-f2) 

" CtrlP config
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
