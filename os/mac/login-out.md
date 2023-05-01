# login and logout script
Login and logout scripts are a deprecated technology. In most cases, you should 
use launchd jobs instead, as described in [Creating Launch Daemons and 
Agents](https://developer.apple.com/library/archive/documentation/MacOSX/Conceptual/BPSystemStartup/Chapters/CreatingLaunchdJobs.html#//apple_ref/doc/uid/10000172i-SW7-BCIEDDBJ).
Only one of each script can be installed at a time.

In terminal,
```sh
chmod +x logout.sh
sudo defaults write com.apple.loginwindow LogoutHook /path/to/script
```

To remove this hook, delete the property:
```sh
sudo defaults delete com.apple.loginwindow LoginHook
```

Use the same procedure to add or remove a logout hook, but type LogoutHook 
instead of LoginHook.
