---
ns: MISC
---
## IS_PROJECTILE_TYPE_IN_ANGLED_AREA

```c
// 0xF0BC12401061DEA0 0xD1AE2681
BOOL IS_PROJECTILE_TYPE_IN_ANGLED_AREA(float x1, float y1, float z1, float x2, float y2, float z2, float width, float p7, cs_type(Any) Hash weaponHash, BOOL ownedByPlayer);
```

See [`IS_POINT_IN_ANGLED_AREA`](#_0x2A70BAE8883E4C81) for the definition of an angled area.

```
NativeDB Removed Parameter 7: float p7
```

## Parameters
* **x1**: X dimension of the angled area 'origin'
* **y1**: Y dimension of the angled area 'origin'
* **z1**: Z dimension of the angled area 'origin'
* **x2**: X dimension of the angled area 'extent'
* **y2**: Y dimension of the angled area 'extent'
* **z2**: Z dimension of the angled area 'extent'
* **width**: Width of the angled area
* **p7**: 
* **weaponHash**:
* **ownedByPlayer**: 

## Return value
