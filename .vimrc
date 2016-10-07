" basic setting
set number
set notitle
set ruler
set noswapfile
set ambiwidth=double
set cursorline
set tabstop=4
set expandtab
set shiftwidth=4
set smartindent
set list
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%
set nrformats-=octal
set hidden
set history=100
set virtualedit=block
set whichwrap=b,s,[,],<,>
set backspace=indent,eol,start
set wildmenu

if &compatible
    set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin(expand('~/.vim/dein'))

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')
" Add or remove your plugins here:
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')
call dein#add('Shougo/neocomplete')
call dein#add('Townk/vim-autoclose')
call dein#add('nathanaelkane/vim-indent-guides')
call dein#add('jnurmine/Zenburn')
" You can specify revision/branch/tag.
"call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

" Required:
call dein#end()

" Required:
filetype plugin indent on
syntax enable

"If you want to install not installed plugins on startup.
if dein#check_install()
    call dein#install()
endif

colorscheme zenburn
highlight Normal ctermbg=none
highlight LineNr ctermbg=none
"vim-indent-guides setting
let g:indent_guides_auto_colors=0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=245
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=237
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_guide_size=4
" neocomplete setting
let g:neocomplete#enable_at_startup=1
