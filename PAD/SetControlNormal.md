---
ns: PAD
aliases: ["0xE8A25867FBA3B05E"]
---
## _SET_CONTROL_NORMAL

```c
// 0xE8A25867FBA3B05E
BOOL _SET_CONTROL_NORMAL(int padIndex, int control, float amount);
```

This is for simulating player input.

## Parameters
* **padIndex**: The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#_0xA5FFE9B05F199DE7).
* **control**: The [control ID](https://docs.fivem.net/docs/game-references/controls/#controls) to check.
* **amount**:  An unbounded normal value.

## Return value
