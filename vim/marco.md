# Clear all reigster
```
let 
regs=split('abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789/-"', 
'\zs')
for r in regs
    call setreg(r, [])
endfor
```
