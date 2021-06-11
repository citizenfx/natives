---
ns: PED
---
## IS_PED_DEAD_OR_DYING

```c
// 0x3317DEDB88C95038 0xCBDB7739
BOOL IS_PED_DEAD_OR_DYING(Ped ped, BOOL p1);
```

Seems to consistently return true if the ped is dead, however, it does not detect the dying phase.

## Parameters
* **ped**: the ped
* **p1**: always passed 1 in the scripts; requires more research.

## Return value
Whether the ped is dead or dying.
