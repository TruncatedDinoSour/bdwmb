# Module - load_average

This module shows your system's average load

```
NAME: load_average
DEPENDENCIES: NONE
TYPE: Shellscript
```

## Setup

- Add the `load_average` module to your modules list
- Set `LOAD_FIELDS`

```
LOAD_FIELDS specifies the load average values to be displayed. Values
within 1-3 are allowed, passed as a range (-) or comma-separated.
    - 1: load average within the last minute
    - 2: load average within the last five minutes
    - 3: load average within the last fifteen minutes
```

Example:

```bash
export LOAD_FIELDS=1,2,3
```
