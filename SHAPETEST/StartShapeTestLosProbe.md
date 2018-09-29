---
ns: SHAPETEST
aliases: ["0x7EE9F5D83DD4F90E"]
---
## START_SHAPE_TEST_LOS_PROBE

```c
// 0x7EE9F5D83DD4F90E 0xEFAF4BA6
int START_SHAPE_TEST_LOS_PROBE(float x1, float y1, float z1, float x2, float y2, float z2, int flags, Entity ent, int p8);
```

```
Returns a ray (?) going from x1, y1, z1 to x2, y2, z2.  
entity = 0 most of the time.  
p8 = 7 most of the time.  
Result of this function is passed to WORLDPROBE::_GET_RAYCAST_RESULT as a first argument.  
```

## Parameters
* **x1**: 
* **y1**: 
* **z1**: 
* **x2**: 
* **y2**: 
* **z2**: 
* **flags**: 
* **ent**: 
* **p8**: 

## Return value
