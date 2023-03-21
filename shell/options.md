# Options in function.
use `getopts` to get the options from command line arguments.
Examples:
```sh
while getopts "available options" opt do
    case
        .
        .
        .
    esac
    
```
```sh
while getopts "Vea:fn:" opt; do
    case $opt in
      V)
        echo "Running foo in verbose mode"
        ;;
      e)
        echo "Running foo with option e"
        ;;
      a)
        echo "Running foo with option a"
        ;;
      f)
        echo "Running foo with option f"
        ;;
      n)
        echo "Running foo with option n"
        ;;
      \?)
        echo "Invalid option: -$OPTARG" >&2
        ;;
    esac
done
```
`Vea` means the options can run without arguments, `:fn:` means the option within :: 
need arguments to load.
