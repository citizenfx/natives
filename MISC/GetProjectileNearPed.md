---
ns: MISC
aliases: ["0x82FDE6A57EE4EE44"]
---
## _GET_PROJECTILE_NEAR_PED

```c
// 0x82FDE6A57EE4EE44 0x507BC6F7
BOOL _GET_PROJECTILE_NEAR_PED(Ped ped, Hash weaponhash, float radius, Vector3* projPos, Entity* projEnt, BOOL ownedByPlayer);
```

```
only documented to be continued...  
Dr. Underscore (1/6/18):  
Exactly like _GET_PROJECTILE_NEAR_PED_COORDS (_0xDFB4138EEFED7B81), but it gives us the Entity that was found aswell.  
p6 is (most likely) ownedByPlayer. (see IS_PROJECTILE_IN_AREA for info)  
```

```
NativeDB Parameter 3: float projPos
NativeDB Parameter 4: float projEnt
```

## Parameters
* **ped**: 
* **weaponhash**: 
* **radius**: 
* **projPos**: 
* **projEnt**: 
* **ownedByPlayer**: 

## Return value
