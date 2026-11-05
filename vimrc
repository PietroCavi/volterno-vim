let $BASH_ENV = $HOME . "/.bash_aliases"

" misc
set tabstop=4
set sw=4
set expandtab

set autoindent

set title

set wildmenu

syntax on

" Convenient tab handling 
nmap <Tab> :tabnext<cr>
nmap <S-Tab> :tabprev<cr>
nmap +<Tab> :tabnew<cr>

" Open/brows files
nmap m :o.<cr>
nmap , :b#<cr>

" Find and replace
nmap ùù :%s/<old>/<new>/gc

" Fast splits
nmap àà <C-w>v<cr>
nmap òò <C-w>s<cr>

" Relative numbers
set number
set rnu

" Yank on system buffer, useful only if gvim is installed, or vim with X11 support enabled
vmap <C-y> "+y

" Mouse toggle (useful to resize splits)
nmap \ :call ToggleMouse()<cr>
function! ToggleMouse()
	" check if mouse is enabled
	if &mouse == 'a'
		" disable mouse
		set mouse=
	else
		" enable mouse everywhere
		set mouse=a
	endif
endfunc

" Open the Terminal with ff and enter textmode with ctrl+f
set splitbelow
nmap ff :call TerminalPop()<cr>
tnoremap <C-f> <C-w><S-n>
function! TerminalPop()
	terminal
	resize 30
endfunc

" Colors
set background=dark

colorscheme gruvbox

" If you need transparency just un-comment this line
"hi Normal guibg=NONE ctermbg=NONE

" Templates
command HTML :-1read $HOME/.vim/templates/html/base.html
command Java :-1read $HOME/.vim/templates/java/base.java
command C    :-1read $HOME/.vim/templates/C/base.c

" Date command
command Date :put=system('date +%d-%m-%Y')

" To open the quickfix after a grep or vimgrep 
augroup myvimrc
    autocmd!
    autocmd QuickFixCmdPost [^l]* cwindow
    autocmd QuickFixCmdPost l*    lwindow
augroup END

" Fast conflict-free multiline edits
set ttimeoutlen=50
