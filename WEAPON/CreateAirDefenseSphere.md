---
ns: WEAPON
aliases: ["0x91EF34584710BE99"]
---
## _CREATE_AIR_DEFENSE_SPHERE

```c
// 0x91EF34584710BE99
int _CREATE_AIR_DEFENSE_SPHERE(float p0, float p1, float p2, int radius, float p4, float p5, float p6, Hash weaponHash);
```

Both coordinates are from objects in the decompiled scripts.

Native related to [_0xECDC202B25E5CF48](#_0xECDC202B25E5CF48) p1 value. The only weapon hash used in the decompiled scripts is weapon_air_defence_gun. These two natives are used by the yacht script, decompiled scripts suggest it and the weapon hash used (valkyrie's rockets) are also used by yachts.

```
NativeDB Parameter 3: float radius
```

## Parameters
* **p0**: X coordinate
* **p1**: Y coordinate
* **p2**: Z coordinate
* **radius**: Unknown float 150.0 is used in freemode script.
* **p4**: X coordinate
* **p5**: Y coordinate
* **p6**: Z coordinate
* **weaponHash**: weapon_air_defence_gun and 0 are used in the decompiled scripts.

## Return value
Seems to be some sort of handle, result is += 1 any time this native is called.
