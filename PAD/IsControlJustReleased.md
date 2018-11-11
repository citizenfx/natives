---
ns: PAD
---
## IS_CONTROL_JUST_RELEASED

```c
// 0x50F940259D3841E6 0x2314444B
BOOL IS_CONTROL_JUST_RELEASED(int inputGroup, int control);
```

Returns whether a [control](https://docs.fivem.net/game-references/controls/) was newly released since the last check.

## Parameters
* **inputGroup**: The control system instance to use. Usually set to 0.
* **control**: The control ID to check.

## Return value
True if the control was recently released.