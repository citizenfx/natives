---
ns: SHAPETEST
aliases: ["0xFF6BE494C7987F34"]
---
## _START_SHAPE_TEST_SURROUNDING_COORDS

```c
// 0xFF6BE494C7987F34
int _START_SHAPE_TEST_SURROUNDING_COORDS(Vector3* pVec1, Vector3* pVec2, int flag, Entity entity, int flag2);
```

Since it is only used in the PC version, likely some mouse-friendly shape test. Uses **in** vector arguments.

Asynchronous.

```
it returns a ShapeTest handle that can be used with GET_SHAPE_TEST_RESULT.  
In its only usage in game scripts its called with flag set to 511, entity to player_ped_id and flag2 set to 7  
```

## Parameters
* **pVec1**: 
* **pVec2**: 
* **flag**: 
* **entity**: 
* **flag2**: 

## Return value
