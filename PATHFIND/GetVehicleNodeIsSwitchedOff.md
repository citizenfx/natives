---
ns: PATHFIND
aliases: ["0x4F5070AA58F69279"]
---
## _GET_IS_SLOW_ROAD_FLAG

```c
// 0x4F5070AA58F69279 0x56737A3C
BOOL _GET_IS_SLOW_ROAD_FLAG(int nodeID);
```

```
p0 = VEHICLE_NODE_ID  
Returns true when the node is Offroad. Alleys, some dirt roads, and carparks return true.  
Normal roads where plenty of Peds spawn will return false  
```

## Parameters
* **nodeID**: 

## Return value
