# BdwmB

> A simple, modular bash/shell script for configuring your DWM bar.

## Installation

### Manual

```bash
$ git clone https://github.com/TruncatedDinosour/bdwmb
$ cd bdwmb
$ sudo make full
$ make config
```

### Linux packages

- Gentoo linux
  - [x11-misc/bdwmb::dinolay](https://ari-web.xyz/gentooatom/x11-misc/bdwmb)

## Flags

```
-q = quiet, do not show debug messages.
-h = show help
-l = list modules
```

## Using it in .xprofile or .xinitrc

```bash
bdwmb -q &
```

## Dependencies

```
xsetroot
bash
coreutils
```

And any other dependencies for the modules
you will want to use

## For documentation look into the `/doc` directory.
