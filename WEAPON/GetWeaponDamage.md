---
ns: WEAPON
aliases: ["0x3133B907D8B32053","_GET_WEAPON_DAMAGE"]
---
## GET_WEAPON_DAMAGE

```c
// 0x3133B907D8B32053 0xE81649C0
float GET_WEAPON_DAMAGE(Hash weaponHash, Any componentHash);
```

This native does not return damages of weapons from the melee and explosive group.

```
NativeDB Parameter 1: Hash componentHash
```

## Parameters
* **weaponHash**: 
* **componentHash**: 0 in the decompiled scripts.

## Return value
Damages of the weapon.