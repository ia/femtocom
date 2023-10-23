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
make
```

