Your /boot wasn't mounted when you updated the kernel.
If the ESP is at /boot/efi and /boot is a separate partition as well then make 
sure both have have fstab entries and are mounted before the next upgrade

# How problem is solving.
1.) comment out the boot partition in /etc/fstab
2.) reboot
3.) login as root
4.) run systemctl isolate rescue.target (from the arch wiki: "This will only 
change the current target, and has no effect on the next boot.")
5.) run pacman -S linux
6.) type "exit" to exit the rescue mode
7.) log in as a normal user
8.) reboo

# What Should do to prevent next.
Mount /boot/efi before upgrading using 
