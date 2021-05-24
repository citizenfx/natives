---
ns: PAD
---
## GET_CONTROL_NORMAL

```c
// 0xEC3C9B8D5327B563 0x5DE226A5
float GET_CONTROL_NORMAL(int padIndex, int control);
```

## Parameters
* **padIndex**: The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#_0xA5FFE9B05F199DE7).
* **control**: The [control ID](https://docs.fivem.net/docs/game-references/controls/#controls) to check.

## Return value
Returns the value of [`GET_CONTROL_VALUE`](#_0xD95E79E8686D2C27) normalized, i.e. a real number value between -1.0 and 1.0
