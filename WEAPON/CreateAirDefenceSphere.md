---
ns: WEAPON
aliases: ["0x91EF34584710BE99", "_CREATE_AIR_DEFENSE_SPHERE"]
---
## CREATE_AIR_DEFENCE_SPHERE

```c
// 0x91EF34584710BE99 0x767C2435
int CREATE_AIR_DEFENCE_SPHERE(float x, float y, float z, cs_type(int) float radius, float weaponPositionX, float weaponPositionY, float weaponPositionZ, Hash weaponHash);
```

Both coordinates are from objects in the decompiled scripts.

Native related to [_0xECDC202B25E5CF48](#_0xECDC202B25E5CF48) p1 value. The only weapon hash used in the decompiled scripts is weapon_air_defence_gun. These two natives are used by the yacht script, decompiled scripts suggest it and the weapon hash used (valkyrie's rockets) are also used by yachts.

## Parameters
* **x**:
* **y**:
* **z**:
* **radius**: Unknown float 150.0 is used in freemode script.
* **weaponPositionX**:
* **weaponPositionY**:
* **weaponPositionZ**:
* **weaponHash**: weapon_air_defence_gun and 0 are used in the decompiled scripts.

## Return value
Seems to be some sort of handle, result is += 1 any time this native is called.
