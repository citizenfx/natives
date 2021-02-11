---
ns: PED
---
## IS_PED_DEAD_OR_DYING

```c
// 0x3317DEDB88C95038 0xCBDB7739
BOOL IS_PED_DEAD_OR_DYING(Ped ped, BOOL p1);
```

Returns true if the ped is dying, p1 seems to always be passed 1.

```
I suggest to remove "OR_DYING" part, because it does not detect dying phase.  
```

## Parameters
* **ped**: the ped to check
* **p1**: 

## Return value
Returns true if the player is dead, false otherwise.
