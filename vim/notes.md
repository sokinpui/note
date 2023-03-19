# Buffer
just like tap and windows, but focus more on editing mutlifile and provide a 
easier naviagation when comparing with tabs and windows.

## command use with buffer
    :e      :edit
are use to open the buffer of the file.
    :find
find the file, if exit then edit the file, otherwise do nothing.
    path+={path}
change the current path, for easier swithch or find when work in some nested 
directory.

# grep and vimgrep
```
grep -R "pattern" file/directroy
vimgrep /pattern/ file
vim /pattern/ file
```

# marks
`m[a-zA-Z]` to set mark, `` `[a-zA-Z]`` jump to the mark, a-z is local mark, A-Z 
is global mark, jump to the file marked.

# Create your own file type
Assume you have create a file `*.rand`, since it is not regular filetype and 
therefore cannot detected by vim, to create new filetype:
`autocmd BufNewFile,BufRead *.rand set filetype=rand`
Declaration can be put into one of the VIMRUNPATH:
```
~/.vimrc
~/.vim/ftdetect/rand.vim
```

## Reload the file
`:edit <file>` is sufficient to reload the file, use `:edit % ` to reload 
current file.


