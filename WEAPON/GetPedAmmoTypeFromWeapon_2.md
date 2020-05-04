---
ns: WEAPON
---
## _GET_PED_AMMO_TYPE_FROM_WEAPON_2

```c
// 0xF489B44DD5AF4BD9
Hash _GET_PED_AMMO_TYPE_FROM_WEAPON_2(Ped ped, Hash weaponHash);
```

```
Returns the base/default ammo type of the specified ped's specified weapon.

Use GET_PED_AMMO_TYPE_FROM_WEAPON if you want current ammo type (like AMMO_MG_INCENDIARY/AMMO_MG_TRACER while using MkII magazines) and use this if you want base ammo type. (AMMO_MG)
```

## Parameters
* **ped**: 
* **weaponHash**: 

## Return value
