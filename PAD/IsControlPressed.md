---
ns: PAD
---
## IS_CONTROL_PRESSED

```c
// 0xF3A21BCD95725A4A 0x517A4384
BOOL IS_CONTROL_PRESSED(int padIndex, int control);
```

Returns whether a control is currently pressed.

## Parameters
* **padIndex**: The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#_0xA5FFE9B05F199DE7).
* **control**: The [control ID](https://docs.fivem.net/docs/game-references/controls/#controls) to check.

## Return value
True if the control was pressed.