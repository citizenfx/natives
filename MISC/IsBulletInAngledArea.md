---
ns: MISC
---
## IS_BULLET_IN_ANGLED_AREA

```c
// 0x1A8B5F3C01E2B477 0xE2DB58F7
BOOL IS_BULLET_IN_ANGLED_AREA(float x1, float y1, float z1, float x2, float y2, float z2, float width, BOOL ownedByPlayer);
```

See [`IS_POINT_IN_ANGLED_AREA`](#_0x2A70BAE8883E4C81) for the definition of an angled area.

For projectiles, see: [`IS_PROJECTILE_TYPE_IN_ANGLED_AREA`](#_0xF0BC12401061DEA0)

## Parameters
* **x1**: X dimension of the angled area 'origin'
* **y1**: Y dimension of the angled area 'origin'
* **z1**: Z dimension of the angled area 'origin'
* **x2**: X dimension of the angled area 'extent'
* **y2**: Y dimension of the angled area 'extent'
* **z2**: Z dimension of the angled area 'extent'
* **width**: Width of the angled area
* **ownedByPlayer**: 

## Return value
True if a bullet, as maintained by a pool within CWeaponManager, has been fired into the defined angled area.
