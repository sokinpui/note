# Create your own file type
Assume you have create a file `*.rand`, since it is not regular filetype and 
therefore cannot detected by vim, to create new filetype:
`autocmd BufNewFile,BufRead *.rand set filetype=rand`
Declaration can be put into one of the VIMRUNPATH:
```
~/.vimrc
~/.vim/ftdetect/rand.vim
```
