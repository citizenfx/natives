---
ns: PAD
---
## IS_CONTROL_RELEASED

```c
// 0x648EE3E7F38877DD 0x1F91A06E
BOOL IS_CONTROL_RELEASED(int padIndex, int control);
```

Returns whether a control is currently _not_ pressed.
padIndex: 0 (PLAYER_CONTROL), 1 (unk) and 2 (unk) used in the scripts.

## Parameters
* **padIndex**: The control system instance to use. Usually set to 0.
* **control**: The control ID to check.

## Return value
True if the control is not pressed.