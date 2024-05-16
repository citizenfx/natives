---
ns: WEAPON
---
## GET_BEST_PED_WEAPON

```c
// 0x8483E98E8B888AE2 0xB998D444
Hash GET_BEST_PED_WEAPON(Ped ped, BOOL ignoreAmmoCount);
```

## Parameters
* **ped**: 
* **ignoreAmmoCount**: If set to true, the best weapon can have no ammo, otherwise, it will return the best weapon with ammo. Default value is `0`.

## Return value
The hash of the best weapon the specified ped has
