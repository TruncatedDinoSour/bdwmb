# Module - uptime

This module shows your machine uptime

```
NAME: uptime
DEPENDENCIES: uptime, awk, date, $UPFORMAT
TYPE: Shellscript
```

## Setup

Add the `uptime` module to your modules list and make
sure you have awk, date (provided by coreutils)
and uptime installed (provided by procps)

And then add `$UPFORMAT` to your `config.sh` to
define the format the uptime will be showed in (will be passed to `date`),
for example:

```bash
export UPFORMAT='%H:%M:%S'
```
