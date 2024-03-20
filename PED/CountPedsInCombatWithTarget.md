---
ns: PED
aliases: ["0x5407B7288D0478B7"]
---
## COUNT_PEDS_IN_COMBAT_WITH_TARGET

```c
// 0x5407B7288D0478B7 0xEF0B78E6
int COUNT_PEDS_IN_COMBAT_WITH_TARGET(Ped ped);
```

```
This native counts how many Peds are engaged in combat with the ped specified in the native call.
```

Like [`COUNT_PEDS_IN_COMBAT_WITH_TARGET_WITHIN_RADIUS`](#_0x336B3D200AB007CB), but without restriction to an area/radius.

## Parameters
* **ped**: The ped with whom the counted Peds are in combat with.

## Return value
int Counter of how many Peds are in combat with the specified Ped.