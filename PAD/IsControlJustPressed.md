---
ns: PAD
---
## IS_CONTROL_JUST_PRESSED

```c
// 0x580417101DDB492F 0x4487F579
BOOL IS_CONTROL_JUST_PRESSED(int padIndex, int control);
```

Returns whether a control was newly pressed since the last check.

## Parameters
* **padIndex**: The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#_0xA5FFE9B05F199DE7).
* **control**: The [control ID](https://docs.fivem.net/docs/game-references/controls/#controls) to check.

## Return value
True if the control was pressed.