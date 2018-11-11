---
ns: PAD
---
## IS_CONTROL_JUST_PRESSED

```c
// 0x580417101DDB492F 0x4487F579
BOOL IS_CONTROL_JUST_PRESSED(int inputGroup, int control);
```

Returns whether a [control](https://docs.fivem.net/game-references/controls/) was newly pressed since the last check.

## Parameters
* **inputGroup**: The control system instance to use. Usually set to 0.
* **control**: The control ID to check.

## Return value
True if the control was pressed.