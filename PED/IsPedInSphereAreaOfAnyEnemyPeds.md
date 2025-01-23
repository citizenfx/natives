---
ns: PED
---
## IS_PED_IN_SPHERE_AREA_OF_ANY_ENEMY_PEDS

```c
// 0x082D79E15302F0C2
BOOL IS_PED_IN_SPHERE_AREA_OF_ANY_ENEMY_PEDS(Ped ped, float x, float y, float z, float range);
```

```
NativeDB Introduced: v3407
```

## Parameters
* **ped**: The ped to check.
* **x**: X coordinate
* **y**: Y coordinate
* **z**: Z coordinate
* **range**: Radius of sphere.

## Return value
Returns `true` if ped is within range of any enemies, `false` otherwise.
