---
ns: PAD
---
## IS_CONTROL_RELEASED

```c
// 0x648EE3E7F38877DD 0x1F91A06E
BOOL IS_CONTROL_RELEASED(int inputGroup, int control);
```

Returns whether a [control](https://docs.fivem.net/game-references/controls/) is currently _not_ pressed.

## Parameters
* **inputGroup**: The control system instance to use. Usually set to 0.
* **control**: The control ID to check.

## Return value
True if the control is not pressed.