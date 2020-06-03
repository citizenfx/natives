---
ns: PATHFIND
---
## GET_VEHICLE_NODE_PROPERTIES

```c
// 0x0568566ACBB5DEDC 0xCC90110B
BOOL GET_VEHICLE_NODE_PROPERTIES(float x, float y, float z, int* density, int* flags);
```

```
Gets the density and flags of the closest node to the specified position.  
Density is a value between 0 and 15, indicating how busy the road is.  
Flags is a bit field.  
```

## Parameters
* **x**: 
* **y**: 
* **z**: 
* **density**: 
* **flags**: 

## Return value
