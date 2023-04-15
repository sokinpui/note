# if-else
```sh
if condition; then
  commands_if_true
else
  commands_if_false
fi
```

# case
```sh
case var in
    v|vim)
        do ;;
    *) default ;;
esac
```
use `|` for mulitple patterns.

# Condition
## Empty string
```sh
if [ -z "string"]; then
    do
fi

var=$(something)
if [ -z "$var"]; then
    do
fi
```
Do if the string or the string type var is empty.

## Comparison
```sh
var=$(something)
if (( var > 100)); then
    do
fi
```
Do if the var is greater than 100.

