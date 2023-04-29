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

# Network Manager

nmcli device wifi list
Connect to a Wi-Fi network:

`$ nmcli device wifi connect SSID_or_BSSID password password`
Connect to a hidden Wi-Fi network:

`$ nmcli device wifi connect SSID_or_BSSID password password hidden yes`
Connect to a Wi-Fi on the wlan1 interface:

`$ nmcli device wifi connect SSID_or_BSSID password password ifname wlan1 `
profile_name
Disconnect an interface:

`$ nmcli device disconnect ifname eth0`
Get a list of connections with their names, UUIDs, types and backing devices:

`$ nmcli connection show`
Activate a connection (i.e. connect to a network with an existing profile):

`$ nmcli connection up name_or_uuid`
Delete a connection:

`$ nmcli connection delete name_or_uuid`
See a list of network devices and their state:

`$ nmcli device`
Turn off Wi-Fi:

`$ nmcli radio wifi off`
