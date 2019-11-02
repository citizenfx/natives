---
ns: MISC
aliases: ["0xDFB4138EEFED7B81"]
---
## _GET_PROJECTILE_NEAR_PED_COORDS

```c
// 0xDFB4138EEFED7B81 0x6BDE5CE4
BOOL _GET_PROJECTILE_NEAR_PED_COORDS(Ped ped, Hash weaponHash, float radius, Vector3* entity, BOOL ownedByPlayer);
```

```
From a quick disassembly I can say that this has something to do with weapons.  
Added params according to what I could see in IDA.  
Dr. Underscore (1/6/18):  
Returns if any projectiles of projHash type are in a radius around this ped. If true, projPos is filled with the position of that entity.  
This native was only ever used with projectiles, but may not be limited to.  
p4 isn't an Entity*, it's actually a Vector3*, which outputs the position of the found entity.  
p5 is (most likely) ownedByPlayer. (see IS_PROJECTILE_IN_AREA for info)  
```

```
NativeDB Parameter 3: Entity* entity
```

## Parameters
* **ped**: 
* **weaponHash**: 
* **radius**: 
* **entity**: 
* **ownedByPlayer**: 

## Return value
