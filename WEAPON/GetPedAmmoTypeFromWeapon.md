---
ns: WEAPON
aliases: ["_GET_PED_AMMO_TYPE"]
---
## GET_PED_AMMO_TYPE_FROM_WEAPON

```c
// 0x7FEAD38B326B9F74 0x09337863
Hash GET_PED_AMMO_TYPE_FROM_WEAPON(Ped ped, Hash weaponHash);
```

```
Returns the current ammo type of the specified ped's specified weapon.

MkII magazines will change the return value, like Pistol MkII returning AMMO_PISTOL without any components and returning AMMO_PISTOL_TRACER after Tracer Rounds component is attached.

Use 0xF489B44DD5AF4BD9 if you always want AMMO_PISTOL.
```

## Parameters
* **ped**: 
* **weaponHash**: 

## Return value
