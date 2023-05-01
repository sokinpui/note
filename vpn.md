# Why use a vpn during remote access?
Without vpn, remote access a laptop, say from school laptop to home laptop, the 
date transferring is explored to public network, which may be interrupted by 
hacker.
With VPN, it secures the date transfer on the internet.

 > However, if you were to use SSH without first establishing a VPN connection, 
   your data would be vulnerable to interception and other security risks. Using a 
   VPN before SSH adds an extra layer of security to your remote access, making it 
   more difficult for attackers to compromise your data or gain unauthorized access 
   to your network.

# openvpn-install notice
```
Notice
------
Keypair and certificate request completed. Your files are:
req: /etc/openvpn/easy-rsa/pki/reqs/mac-air.req
key: /etc/openvpn/easy-rsa/pki/private/mac-air.key
Using configuration from /etc/openvpn/easy-rsa/pki/bc2863ca/temp.98ba38c5
Check that the request matches the signature
Signature ok
The Subject's Distinguished Name is as follows
commonName            :ASN.1 12:'mac-air'
Certificate is to be certified until Aug  2 10:50:58 2025 GMT (825 days)

Write out database with 1 new entries
Data Base Updated

Notice
------
Certificate created at:
* /etc/openvpn/easy-rsa/pki/issued/mac-air.crt

Notice
------
Inline file created:
* /etc/openvpn/easy-rsa/pki/inline/mac-air.inline
Client mac-air added.

The configuration file has been written to /home/so/mac-air.ovpn.
Download the .ovpn file and import it in your OpenVPN client.
```

# fail to use vpn in school
Error:
```sh
2023-05-01 09:52:22 TLS Error: TLS key negotiation failed to occur within 60 
seconds (check your network connectivity)
2023-05-01 09:52:22 TLS Error: TLS handshake failed
2023-05-01 09:52:22 SIGUSR1[soft,tls-error] received, process restarting
2023-05-01 09:52:22 Restart pause, 1 second(s)
2023-05-01 09:52:23 TCP/UDP: Preserving recently used remote address: 
[AF_INET]123.202.165.196:1194
2023-05-01 09:52:23 Socket Buffers: R=[786896->786896] S=[9216->9216]
2023-05-01 09:52:23 UDPv4 link local: (not bound)
2023-05-01 09:52:23 UDPv4 link remote: [AF_INET]123.202.165.196:1194
```

What is the requirement to set up a vpn network to connect home router?

