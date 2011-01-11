set number
set tabstop=4
set softtabstop=4
set shiftwidth=4
set cindent
set expandtab
set scrolloff=3
set incsearch
set ttyfast
syntax on
set nocompatible
filetype plugin indent on
colorscheme vividchalk

set spelllang=en_gb

"Speed up buffer switching
map <C-Up> <C-W>k
map <C-Down> <C-W>j
map <C-Left> <C-W>h
map <C-Right> <C-W>l
map <C-k> <C-W>k
map <C-j> <C-W>j
map <C-h> <C-W>h
map <C-l> <C-W>l

"Speed up buffer resizing
map + <C-W>+
map - <C-W>-

"Tab shortcuts
map <C-S-]> gt
map <C-S-[> gT
map <C-1> 1gt
map <C-2> 2gt
map <C-3> 3gt
map <C-4> 4gt
map <C-5> 5gt
map <C-6> 6gt
map <C-7> 7gt
map <C-8> 8gt
map <C-9> 9gt
map <C-0> :tablast<CR>

" Conque settings
let g:ConqueTerm_ReadUnfocused = 1

" Restore cursor position
autocmd BufReadPost *
  \ if line("'\"") > 1 && line("'\"") <= line("$") |
  \   exe "normal! g`\"" |
  \ endif


"set ttymouse
"set mouse=
set mouse=a " Enable the mouse
behave xterm
set selectmode=mouse

"Allow sensible pasting
set pastetoggle=<F2>

"Ragtag
inoremap <M-o>       <Esc>o
inoremap <C-j>       <Down>
let g:ragtag_global_maps = 1

"Ruby-specific stuff here
autocmd BufNewFile,BufRead *.feature,*.story  set ft=cucumber

au BufRead,BufNewFile *.rhtml,*.rb set filetype=ruby
autocmd FileType ruby set tabstop=2
autocmd FileType ruby set shiftwidth=2
autocmd FileType ruby set expandtab
autocmd FileType ruby set softtabstop=2

autocmd FileType cucumber set tabstop=2
autocmd FileType cucumber set shiftwidth=2
autocmd FileType cucumber set expandtab
autocmd FileType cucumber set softtabstop=2
