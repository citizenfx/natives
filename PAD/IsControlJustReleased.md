---
ns: PAD
---
## IS_CONTROL_JUST_RELEASED

```c
// 0x50F940259D3841E6 0x2314444B
BOOL IS_CONTROL_JUST_RELEASED(int padIndex, int control);
```

Returns whether a control was newly released since the last check.

## Parameters
* **padIndex**: The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#_0xA5FFE9B05F199DE7).
* **control**: The [control ID](https://docs.fivem.net/docs/game-references/controls/#controls) to check.

## Return value
True if the control was recently released.