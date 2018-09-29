---
ns: SHAPETEST
aliases: ["_CAST_3D_RAY_POINT_TO_POINT"]
---
## START_SHAPE_TEST_CAPSULE

```c
// 0x28579D1B8F8AAC80 0x591EA833
int START_SHAPE_TEST_CAPSULE(float x1, float y1, float z1, float x2, float y2, float z2, float radius, int flags, Entity entity, int p9);
```

```
Raycast from point to point, where the ray has a radius.   
flags:  
vehicles=10  
peds =12  
Iterating through flags yields many ped / vehicle/ object combinations  
p9 = 7, but no idea what it does  
Entity is an entity to ignore  
```

## Parameters
* **x1**: 
* **y1**: 
* **z1**: 
* **x2**: 
* **y2**: 
* **z2**: 
* **radius**: 
* **flags**: 
* **entity**: 
* **p9**: 

## Return value
