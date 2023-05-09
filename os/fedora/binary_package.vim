Use binary package as command:
To use the binary as a command, you can place the binary file in a directory that is already in your system's `PATH`. For example, `/usr/local/bin` is a common directory that is typically already included in the system's `PATH`. 

To do this, follow these steps:

1. Copy the binary file to the directory you want to use as the location of the command. In this example, we'll use `/usr/local/bin`:

```
sudo cp kmonad-0.4.1-linux /usr/local/bin/kmonad
```

Note that we've renamed the binary file to `kmonad` for convenience.

2. Set the appropriate permissions to allow the binary file to be executed:

```
sudo chmod +x /usr/local/bin/kmonad
```

3. You can now run the binary file as a command:

```
kmonad
```

This will execute the `kmonad` command as if it were installed on your system. 

Note: If you do not have the necessary permissions to write to the directory you want to use as the location of the command, you may need to prefix the above commands with `sudo`.
