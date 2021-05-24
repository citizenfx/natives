---
ns: PAD
aliases: ["0x5B84D09CEC5209C5"]
---
## GET_CONTROL_UNBOUND_NORMAL

```c
// 0x5B84D09CEC5209C5 0xC49343BB
float GET_CONTROL_UNBOUND_NORMAL(int padIndex, int control);
```

```
Seems to return values between -1 and 1 for controls like gas and steering.
```

## Parameters
* **padIndex**: The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#_0xA5FFE9B05F199DE7).
* **control**: The [control ID](https://docs.fivem.net/docs/game-references/controls/#controls) to check.

## Return value
