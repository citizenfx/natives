---
ns: WEAPON
---
## GET_BEST_PED_WEAPON

```c
// 0x8483E98E8B888AE2 0xB998D444
Hash GET_BEST_PED_WEAPON(Ped ped, BOOL ignoreAmmoCount);
```

```
p1 is always 0 in the scripts.
After further testing, the boolean seems to be some sort of a flag to ignore ammo count.
```

## Parameters
* **ped**: 
* **ignoreAmmoCount**: If set to true, the best weapon can have no ammo, othewise, it will return the best weapon with ammo

## Return value
The hash of the best ped weapon
