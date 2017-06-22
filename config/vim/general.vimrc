"------------------------------------------------------------------------------
" general.vimrc
" Contains general editor tweaks
"------------------------------------------------------------------------------


" Make backspace work normally
set backspace=indent,eol,start

" Show line numbers
set number

" Show relative line numbers
set rnu

" Smart auto-indenting inside numbered lists
set formatoptions+=n

" Remove comment leader when joining comments
set formatoptions+=j

" Syntax highlighting
syntax on

" Hide mouse cursor while typing
set mousehide

" Display current mode
set showmode

" Highlight current line
set cursorline

" Make searching better
set gdefault
set ignorecase
set smartcase

" Find as you search
set incsearch

" Highlight search matches
set hlsearch

" Show the ruler
set ruler

" Show partial commands in status line
set showcmd

" Show the status bar
set laststatus=2

" Lines to scroll when cursor leaves screen
set scrolljump=5

" Increase memory limit of registers
set viminfo='20,<1000

" Minimum lines to keep above and below cursor
set scrolloff=5

" Show matching brackets/parenthesis
set showmatch

" Indent at same position as the previous line
set autoindent

" Show hidden whitespace chars
set listchars=tab:>-,eol:¬,trail:␠
set list

" Use indents instead of 4 spaces
set shiftwidth=4

" Indentation every 4 columns
set tabstop=4

" Use tabs NOT spaces
set noexpandtab

" Encoding
set encoding=utf8

" Stronger encryption
setlocal cm=blowfish2

" Automatically update file if modified by external program
set autoread

" Rendering
set ttyfast

" Don't redraw during macro playback
set lazyredraw

" Visual autocomplete for command menu
set wildmenu

" Text colorscheme
colorscheme brogrammer

" For those emergencies...
set mouse=a

"Don't ask to save when changing buffers (i.e. when jumping to a type definition)
set hidden

" this setting controls how long to wait (in ms) before fetching type / symbol information.
set updatetime=500
" Remove 'Press Enter to continue' message when type information is longer than one line.
set cmdheight=2

" Access system clipboarod
if (has("win32") || (has("unix") && (system("uname -s") =~ "Darwin")))
	" Windows or MacOS
	set clipboard=unnamed
else
	" Linux
	set clipboard=unnamedplus
endif
