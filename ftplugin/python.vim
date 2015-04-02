"Structures
map <F5> ofor i in :<ESC>o
map! <F5> for i in :<ESC>o
map <F6> ofor i in range():<ESC>o 
map! <F6> for i in range():<ESC>o 
map <F7> owhile():<ESC>o
map! <F7> while():<ESC>o
map <F8> oif():<ESC>o<ESC>else:<ESC>o
map! <F8> if():<ESC>o<ESC>else:<ESC>o

if has("autocmd") && exists("+omnifunc")
 autocmd Filetype octave
 \if & omnifunc = "" |
 \setlocal omnifunc=syntaxcomplete#Complete |
 \endif
endif

