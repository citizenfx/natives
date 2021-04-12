---
ns: PAD
---
## IS_CONTROL_JUST_RELEASED

```c
// 0x50F940259D3841E6 0x2314444B
BOOL IS_CONTROL_JUST_RELEASED(int padIndex, int control);
```

Returns whether a control was newly released since the last check.
padIndex: 0 (PLAYER_CONTROL), 1 (unk) and 2 (unk) used in the scripts.

## Parameters
* **padIndex**: The control system instance to use. Usually set to 0.
* **control**: The control ID to check.

## Return value
True if the control was recently released.