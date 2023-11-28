# femtocom

`femtocom` is a simple shell-based wrapper for `picocom` terminal emulator app.


## Prerequirements

- [`picocom`](https://github.com/npat-efault/picocom);
- configuration line for every device of interest in custom rules file for `udev`;
- [`femtocom` script](https://github.com/ia/femtocom/raw/main/femtocom);
- configuration file for `femtocom`.


### picocom

Install picocom:
- using package manager of your distribution like:
```
$ sudo  apt  install  picocom
```
or
```
$ sudo  dnf  install  picocom
```
(or something similar)

- using sources:
```
$ git  clone  https://github.com/npat-efault/picocom
$ cd  picocom
$ make
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


### femtocom

- download the script:
```
$ wget  https://github.com/ia/femtocom/raw/main/femtocom
```
- set executable bit for the downloaded script:
```
$ chmod  a+x  femtocom
```
- put the downloaded script to the directory like `/usr/local/bin` or a similar one which is in `PATH` shell variable:
```
$ mv  femtocom  DIRECTORY_WITH_BINS_INCLUDED_IN_PATH_VARIABLE
```


### femtocom config

- create file `~/.femtocomrc`:
```
$ touch ~/.femtocomrc
```

- add default section to the config:
```
[default]
	baud=115200
	databits=8
	parity=n
	flow=n
	stopbits=1
	omap=crlf
	port=/dev/ttyUSB0
```

- add per-device section for a compatible device, i.e.:
```
[CUSTOM_NAME]
	baud=115200
	databits=8
	parity=n
	flow=n
	stopbits=1
```


## Testing a setup

- connect a device
- just run:
`$ femtocom default`
or - if it's added to the config:
`$ femtocom CUSTOM_NAME`
- if everything is configured properly, then shell to a target device will be provided


