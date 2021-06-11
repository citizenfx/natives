---
ns: PAD
---
## IS_CONTROL_RELEASED

```c
// 0x648EE3E7F38877DD 0x1F91A06E
BOOL IS_CONTROL_RELEASED(int padIndex, int control);
```

Returns whether a control is currently _not_ pressed.

## Parameters
* **padIndex**: The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#_0xA5FFE9B05F199DE7).
* **control**: The [control ID](https://docs.fivem.net/docs/game-references/controls/#controls) to check.

## Return value
True if the control is not pressed.