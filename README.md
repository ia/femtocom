# femtocom

`femtocom` is a simple shell-based wrapper for `picocom` terminal emulator app


## Prerequirements

- picocom
- configuration line for every device of interest in custom rules file for udev
- configuration file for femtocom


### picocom

Install picocom:
- using package manager of your distribution like:
`apt install picocom`
or
`dnf install picocom`
(or something like that)

- using sources like:
```
git clone https://github.com/npat-efault/picocom
cd picocom
make
```


### udev rule

- add custom rule for a compatible device:
```
SUBSYSTEM=="tty", ATTRS{bcdDevice}=="____", ATTRS{idProduct}=="____", ATTRS{idVendor}=="____", MODE="0664", GROUP="plugdev", SYMLINK+="CUSTOM_NAME"
```

- restart `udev` to apply changes:
```
$ sudo  udevadm  control --reload-rules  &&  sudo  udevadm  trigger
```


### femtocom config

- create file `~/.femtocomrc`:
```
$ touch ~/.femtocomrc
```

- add global section to the config:
TBA


