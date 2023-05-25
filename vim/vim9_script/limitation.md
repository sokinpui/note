# Can't
Cannot use in command mode, therefor mapping like this is not allowd:
```
import autoload 'some.vim'
nmap a :call some.func()<cr>
```

Do in follow way instead:
```
import autoload 'some.vim'
nmap a :call some#func()<cr>
```
