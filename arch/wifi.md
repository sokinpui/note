# Using iwd
Create a service file under `/var/lib/iwd/` with name 
`wifi_name.encrypt_method`.

## CUHK1x
try using this template:
```sh
[Security]
EAP-Method=PWD
EAP-Identity=user@domain.com
EAP-Password=secret123

[Setting]
AutoConnect=true
```

