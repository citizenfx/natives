---
ns: PED
---
## IS_PED_DEAD_OR_DYING

```c
// 0x3317DEDB88C95038 0xCBDB7739
BOOL IS_PED_DEAD_OR_DYING(Ped ped, BOOL p1);
```

Returns true if the ped is dying or dead. Some users report this function does _not_ detect the dying phase, and only the dead phase.

## Parameters
* **ped**: The ped to check
* **p1**: Always `1` (`true`) in original scripts.

## Return value
Returns true if the player is dead, false otherwise.
