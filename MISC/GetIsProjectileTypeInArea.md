---
ns: MISC
aliases: ["0x8D7A43EC6A5FEA45"]
---
## _GET_IS_PROJECTILE_TYPE_IN_AREA

```c
// 0x8D7A43EC6A5FEA45 0x1A40454B
BOOL _GET_IS_PROJECTILE_TYPE_IN_AREA(float x1, float y1, float z1, float x2, float y2, float z2, Hash projHash, Vector3* projPos, BOOL ownedByPlayer);
```

```
Dr. Underscore (1/6/18):  
Works exactly like IS_PROJECTILE_TYPE_IN_AREA, but it puts the position of the projectile in the vector.  
p8 is probably ownedByPlayer, but not known for sure. (see IS_PROJECTILE_IN_AREA for info)  
Unsure of the hash name, could someone confirm this?  
```

## Parameters
* **x1**: 
* **y1**: 
* **z1**: 
* **x2**: 
* **y2**: 
* **z2**: 
* **projHash**: 
* **projPos**: 
* **ownedByPlayer**: 

## Return value
