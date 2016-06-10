" UI Config
set number " show line numbers
set showcmd " show command in bottom bar
set cursorline " highlight current line
set wildmenu " visual autocomplete for command menu
set showmatch " highlight matching [{()}]

syntax on
filetype plugin indent on

" Set Colorscheme
colorscheme slate

" Searching
set incsearch " search as characters are entered
set hlsearch " highlight matches
nnoremap <leader><space> : nohlsearch<CR>

" Use 256 colours (Use this setting only if your terminal supports 256 colours)
if !has('gui_running')
	set t_Co=256
endif

" Always show statusline
set laststatus=2

"#### Plugins #####

"Pathogen
execute pathogen#infect()

"Lightline config
let g:lightline = {
	\ 'colorscheme': 'wombat',
	\ }





