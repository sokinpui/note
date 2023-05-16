# autoload function

first import the function from autoload:
```
import autload 'for/somefunc.vim'
```

In the file `~/.vim/autoload/for/somefunc.vim`, add `export` before function 
declaration:
```
export def someFunction()
```

# Call the function
```
g:someVar = somefunc.someFunction()
```
