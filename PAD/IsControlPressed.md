---
ns: PAD
---
## IS_CONTROL_PRESSED

```c
// 0xF3A21BCD95725A4A 0x517A4384
BOOL IS_CONTROL_PRESSED(int padIndex, int control);
```

Returns whether a control is currently pressed.
padIndex: 0 (PLAYER_CONTROL), 1 (unk) and 2 (unk) used in the scripts.

## Parameters
* **padIndex**: The control system instance to use. Usually set to 0.
* **control**: The control ID to check.

## Return value
True if the control was pressed.