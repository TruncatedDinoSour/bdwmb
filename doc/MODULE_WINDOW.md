# Module - window

This module shows your current active window title

```
NAME: window
DEPENDENCIES: xprop, awk, cut, tr, $DEFAULT_WINDOW_TITLE
TYPE: Shellscript
```

## Setup

Add the `window` module to your modules list and
make sure you have xprop (provided by xprop),
awk (provided by awk or coreutils) and cut, tr (both provided by coreutils)

Then define `DEFAULT_WINDOW_TITLE` in your `config.sh`,
it will be used if there is no active window selected.

For example:

```bash
export DEFAULT_WINDOW_TITLE='~'
```
