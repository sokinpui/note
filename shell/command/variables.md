# Variables
use `var=$(stdin)` to store the from stdin to the var.
Example:
```sh
# assign
file=$(find -s . | egrep -i "\/*$1\w*\.md" | head -1)
result=$(ls ~ | head)
# call the function.
echo ${result}
```

