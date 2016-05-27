" Why am I using pathogen?
" 1st its name is cool
" 2nd I don't need more, nor any (neo)vim user do actually
execute pathogen#infect()

colorscheme gruvbox
set bg=dark    " Setting dark mode
" This fix themes not loading because terminal is not using 256 colors
if has('unix')
        set t_Co=256
endif
" Let NeoVim handles true colors!
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
" Cool trick to save when you forget to start vim using sudo
cmap w!! w !sudo tee > /dev/null %
" This should be enabled by default
set number
set incsearch
set smartcase

" Ignore common file types
set wildignore=*.o
" Display airline bar
set laststatus=2
set title
set lazyredraw
set wildmenu
set showmatch


" Enable folding
set foldenable
" Open all default fold at level <= 10
set foldlevelstart=10
" Nested folding level max = 10
set foldnestmax=10
" Folding by indentation
set foldmethod=indent

" Paste shortcut
set pastetoggle=<F2>
" Expand tabs
set expandtab
" Prevent Vim slowness with very long lines
set synmaxcol=300
" God damnit don't make huge paragraphs you motherfuckers
" Also why 78? 80 is plain
set textwidth=80

" Let's set this tree view by default. God it's so useful
" Well open it ONLY if a file was specified, otherwise I 
" might want to do something specific w/ it
" As another note NERDTreeTabs fix the issue of file closing but not the tree
" and allows me to open files in tabs instead of splitting the screen when
" working (can become REALLY annoying)
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() != 0 && !exists("s:std_in") | let g:nerdtree_tabs_open_on_console_startup=1| endif
let NERDTreeMapOpenInTab='<Enter>'

" Map esc to go out of terminal mode
" This is useful when, for exemple, changing between make/program exec and
" actual coding of the soft
tnoremap <Esc> <C-\><C-n>

