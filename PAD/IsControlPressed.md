---
ns: PAD
---
## IS_CONTROL_PRESSED

```c
// 0xF3A21BCD95725A4A 0x517A4384
BOOL IS_CONTROL_PRESSED(int inputGroup, int control);
```

Returns whether a [control](https://docs.fivem.net/game-references/controls/) is currently pressed.

## Parameters
* **inputGroup**: The control system instance to use. Usually set to 0.
* **control**: The control ID to check.

## Return value
True if the control was pressed.