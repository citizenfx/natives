---
ns: PAD
---
## IS_CONTROL_JUST_PRESSED

```c
// 0x580417101DDB492F 0x4487F579
BOOL IS_CONTROL_JUST_PRESSED(int padIndex, int control);
```

Returns whether a control was newly pressed since the last check.
padIndex: 0 (PLAYER_CONTROL), 1 (unk) and 2 (unk) used in the scripts.

## Parameters
* **padIndex**: The control system instance to use. Usually set to 0.
* **control**: The control ID to check.

## Return value
True if the control was pressed.