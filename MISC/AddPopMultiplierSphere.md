---
ns: MISC
aliases: ["0x32C7A7E8C43A1F80"]
---
## ADD_POP_MULTIPLIER_SPHERE

```c
// 0x32C7A7E8C43A1F80 0xCE4A3D20
int ADD_POP_MULTIPLIER_SPHERE(float x, float y, float z, float radius, float pedMultiplier, float vehicleMultiplier, BOOL p6, BOOL p7);
```

```
This native is adding a zone, where you can change density settings. For example, you can add a zone on 0.0, 0.0, 0.0 with radius 900.0 and vehicleMultiplier 0.0, and you will not see any new population vehicle spawned in a radius of 900.0 from 0.0, 0.0, 0.0. Returns the id. You can have only 15 zones at the same time. You can remove zone using REMOVE_POP_MULTIPLIER_SPHERE
```

## Parameters
* **x**: 
* **y**: 
* **z**: 
* **radius**: 
* **pedMultiplier**: 
* **vehicleMultiplier**: 
* **p6**: 
* **p7**: 

## Return value
