---
ns: PATHFIND
---
## GET_NTH_CLOSEST_VEHICLE_NODE_FAVOUR_DIRECTION

```c
// 0x45905BE8654AE067 0x928A4DEC
BOOL GET_NTH_CLOSEST_VEHICLE_NODE_FAVOUR_DIRECTION(float x, float y, float z, float desiredX, float desiredY, float desiredZ, int nthClosest, Vector3* outPosition, float* outHeading, int nodetype, cs_type(Any) float p10, Any p11);
```

```
See gtaforums.com/topic/843561-pathfind-node-types for node type info. 0 = paved road only, 1 = any road, 3 = water  
p10 always equal 0x40400000  
p11 always equal 0  
```

## Parameters
* **x**: 
* **y**: 
* **z**: 
* **desiredX**: 
* **desiredY**: 
* **desiredZ**: 
* **nthClosest**: 
* **outPosition**: 
* **outHeading**: 
* **nodetype**: 
* **p10**: 
* **p11**: 

## Return value
