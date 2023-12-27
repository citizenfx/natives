---
ns: PED
---
## IS_PED_DEAD_OR_DYING

```c
// 0x3317DEDB88C95038 0xCBDB7739
BOOL IS_PED_DEAD_OR_DYING(Ped ped, BOOL checkMeleeDeathFlags);
```

Determines if a ped is dead. Contrary to what the name might suggest, it does not always detect when a ped is in the 'dying' phase (transitioning to death). The exception is when `checkMeleeDeathFlags` is set to `true`, which then includes peds in the midst of melee takedown moves as being in a dying state, even if the death task has not yet started.

```
NativeDB Introduced: v323
```

## Parameters
* **ped**: The ped to check.
* **checkMeleeDeathFlags**: If set to `true`, extends the check to include melee takedown moves as part of the dying phase.

## Return value
Returns `true` if the ped is dead. When `checkMeleeDeathFlags` is set to `true`, it also considers peds in melee takedown moves as dying, although the broader 'dying' phase may not be detected.