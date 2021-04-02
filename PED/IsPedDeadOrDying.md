---
ns: PED
---
## IS_PED_DEAD_OR_DYING

```c
// 0x3317DEDB88C95038 0xCBDB7739
BOOL IS_PED_DEAD_OR_DYING(Ped ped, BOOL p1);
```

Seems to consistently return true if the ped is dead.
p1 is always passed 1 in the scripts.
I suggest to remove "OR_DYING" part, because it does not detect dying phase.
That's what the devs call it, cry about it.
lol

## Parameters
* **ped**: The ped to check
* **p1**: Always `1` (`true`) in original scripts.

## Return value
Returns true if the player is dead, false otherwise.
