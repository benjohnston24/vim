"autocmd VimEnter * NERDTree

"Cpp boilerplate
autocmd bufNewFile *.cpp 0r  ~/.vim/boilers/cpp_source.txt
autocmd bufnewfile *.cpp exe "1," . 10 . "g/File Name.*/s//File Name : " .expand("%")
autocmd bufnewfile *.cpp exe "1," . 10 . "g/Last Modified.*/s//Last Modified: ".strftime("%d-%b-%Y %H:%M:%S %Z")
autocmd bufnewfile *.cpp exe "1," . 10 . "g/Created.*/s//Created: ".strftime("%d-%b-%Y %H:%M:%S %Z")

"C boilerplate
autocmd bufNewFile *.c 0r  ~/.vim/boilers/c_source.txt
autocmd bufnewfile *.c exe "1," . 10 . "g/File Name.*/s//File Name : " .expand("%")
autocmd bufnewfile *.c exe "1," . 10 . "g/Last Modified.*/s//Last Modified: ".strftime("%d-%b-%Y %H:%M:%S %Z")
autocmd bufnewfile *.c exe "1," . 10 . "g/Created.*/s//Created: ".strftime("%d-%b-%Y %H:%M:%S %Z")

"Headerfile boilerplate
autocmd bufNewFile *.h 0r  ~/.vim/boilers/header.txt
autocmd bufnewfile *.h exe "1," . 10 . "g/File Name.*/s//File Name : " .expand("%")
autocmd bufnewfile *.h exe "1," . 10 . "g/Last Modified.*/s//Last Modified: ".strftime("%d-%b-%Y %H:%M:%S %Z")
autocmd bufnewfile *.h exe "1," . 10 . "g/Created.*/s//Created: ".strftime("%d-%b-%Y %H:%M:%S %Z")
autocmd bufnewfile *.h exe "1," . 35 . "g/_H*/s//".expand("%")[:-3]."_H"

"Makefile boilerplate
autocmd bufnewfile Makefile 0r ~/.vim/boilers/Makefile.txt 
autocmd bufnewfile Makefile exe "1," . 10 . "g/Created.*/s//Created: ".strftime("%d-%b-%Y %H:%M:%S %Z")

"Python boilerplate
autocmd bufnewfile *.py 0r  ~/.vim/boilers/python_header.txt
"autocmd bufnewfile *.py exe "1," . 10 . "g/File Name.*/s//File Name : " .expand("%")
"autocmd bufnewfile *.py exe "1," . 10 . "g/Created.*/s//Created: ".strftime("%d-%b-%Y %H:%M:%S %Z")
autocmd bufnewfile *.py exe "1," . 22 . "g/__date__ =.*/s//__date__ = '".strftime("%d-%b-%Y %H:%M:%S %Z")."'"

"Python package setup
autocmd bufnewfile setup.py 0r  ~/.vim/boilers/python_setup.txt
"autocmd bufnewfile *.py exe "1," . 10 . "g/File Name.*/s//File Name : " .expand("%")
"autocmd bufnewfile *.py exe "1," . 10 . "g/Created.*/s//Created: ".strftime("%d-%b-%Y %H:%M:%S %Z")
autocmd bufnewfile *.py exe "1," . 22 . "g/__date__ =.*/s//__date__ = '".strftime("%d-%b-%Y %H:%M:%S %Z")."'"

execute pathogen#infect()
set statusline+=%{SyntasticStatuslineFlag()}
"Max line width to 80 characters
set tabstop=4
set statusline=%f "tail of the filename
set number
syntax on
filetype indent on
set statusline+=%#warningmsg#
set statusline+=%*
set expandtab
set tabstop=4
set textwidth=120
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
map <F2> :wa <CR>
map! <F2> :wa <CR>
map <F3> :!doxygen doxyfile <CR>
"map <F4> :wa <CR>:!python scratchpad.py <CR>
map <F4> :r!date<CR>
map! <F4> <ESC>:r!date<CR>
nmap <C-S-l> :tabn <CR>
nmap <C-S-k> :tabp <CR>

"Language specific shortcuts stored in ~/.vim/ftplugin/*.vim files
filetype plugin on
