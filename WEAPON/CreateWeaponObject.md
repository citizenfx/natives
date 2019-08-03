---
ns: WEAPON
---
## CREATE_WEAPON_OBJECT

```c
// 0x9541D3CF0D398F36 0x62F5987F
Object CREATE_WEAPON_OBJECT(Hash weaponHash, int ammoCount, float x, float y, float z, BOOL showWorldModel, float heading, Any p7);
```

Creates a weapon object that can be shown in the world.

Before creating the object, you need to load the weapon's world model which you can get from [GET_WEAPONTYPE_MODEL](#_0xF46CDC33180FDA94).


Commented example from the decompiled scripts: (found in `gunclub_shop` at line 10735)
```c
*iParam0 = WEAPON::CREATE_WEAPON_OBJECT(*uParam1 /* weapon hash */, func_92(*uParam1, 4) /* ammo count */, vVar0 /* position vector */, 1 /* show world model */, 1f /* "heading" float */, iParam4 /* unk possible int */, 0 /* unk */, 1 /* unk */);
```

## Parameters
* **weaponHash**: The weapon hash to create an object of
* **ammoCount**: How much ammo this weapon object should have
* **x**: x coord
* **y**: y coord
* **z**: z coord
* **showWorldModel**: If the world model should be shown for this weapon object
* **heading**: The heading the weapon object should achieve
* **p7**: unknown

## Return value
A weapon object handle
