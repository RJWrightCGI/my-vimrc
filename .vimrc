" UI Config
set number " show line numbers
set showcmd " show command in bottom bar
set cursorline " highlight current line
set wildmenu " visual autocomplete for command menu
set showmatch " highlight matching [{()}]

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



