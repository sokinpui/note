# PATH
Executable file is put here, the file in this directory can be call by its name, 
script should be put here. Before running the script, should first make it 
exectable by `chomd +x ./script`.

# FPATH
Function is put here, it is not for script

# Return and exit
use return in file in $FPATH, use exit in file in $PATH.

Function will interact with the current environment, while script is running in 
an new shell, then return the result back to the original shell, therefore, no 
environment will be changed.
