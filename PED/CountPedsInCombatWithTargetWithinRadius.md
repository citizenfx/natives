---
ns: PED
---
## COUNT_PEDS_IN_COMBAT_WITH_TARGET_WITHIN_RADIUS

```c
// 0x336B3D200AB007CB 0xFB18CB19
int COUNT_PEDS_IN_COMBAT_WITH_TARGET_WITHIN_RADIUS(Ped ped, float x, float y, float z, float radius);
```


## Parameters
* **ped**: Ped that other peds are in combat with.
* **x**: X coordinate from which the radius should originate.
* **y**: Y coordinate from which the radius should originate.
* **z**: Z coordinate from which the radius should originate.
* **radius**: Radius within which the peds should be counted.

## Return value
Returns int value of how many peds are currently in combat with the target within the given radius (sphere from x,y,z).