---
ns: PED
---
## SET_PED_COMBAT_RANGE

```c
// 0x3C606747B23E497B 0x8818A959
void SET_PED_COMBAT_RANGE(Ped ped, int range);
```

Define the scope within which the ped will engage in combat with the target.

```c
enum eCombatRange {
    CR_NEAR = 0, // keeps within 5-15m
    CR_MEDIUM = 1, // keeps within 7-30m
    CR_FAR = 2, // keeps within 15-40m
    CR_VERY_FAR = 3 // keeps within 22-45m
};
```

## Parameters
* **ped**: Ped index
* **range**: See `eCombatRange` enum.
